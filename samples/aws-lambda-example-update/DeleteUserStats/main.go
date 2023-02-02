// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"fmt"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth/validator"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/golang-jwt/jwt"
	"github.com/sirupsen/logrus"
)

var (
	// use the default config and token implementation
	configRepo = *auth.DefaultConfigRepositoryImpl()
	tokenRepo  = *auth.DefaultTokenRepositoryImpl()

	oAuth20Service = iam.OAuth20Service{
		Client:           factory.NewIamClient(&configRepo),
		ConfigRepository: &configRepo,
		TokenRepository:  &tokenRepo,
	}
	statConfigService = social.StatConfigurationService{
		Client:          factory.NewSocialClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
	userStatisticService = &social.UserStatisticService{
		Client:          factory.NewSocialClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
)

type Request struct {
	Namespace string `json:"namespace"`
	UserID    string `json:"userId"`
	StatCode  string `json:"statCode"`
}

func main() {
	lambda.Start(Handler)
}

func Handler(evt *events.LambdaFunctionURLRequest) (*events.LambdaFunctionURLResponse, error) {
	// parse the events
	request := Request{}
	err := json.Unmarshal([]byte(evt.Body), &request)
	if err != nil {
		errString := fmt.Errorf("failed to parse the request. %s", err.Error())
		logrus.Error(errString)

		return &events.LambdaFunctionURLResponse{}, errString
	}

	// parse the access token
	reqToken := evt.Headers["authorization"]
	splitToken := strings.Split(reqToken, "Bearer ")
	if len(splitToken) == 1 || len(splitToken) > 2 {
		errString := fmt.Errorf("invalid token. Token split \"Bearer\" and token authorization")
		logrus.Print(errString)

		return &events.LambdaFunctionURLResponse{}, errString
	}
	// convert the token from string to be able to store to token repository
	tokenResponseV3, err := convertTokenToTokenResponseV3(splitToken[1])
	if err != nil {
		errString := fmt.Errorf("Unable to convert token to response model. " + err.Error())
		logrus.Error(errString)

		return &events.LambdaFunctionURLResponse{}, errString
	}
	// store the valid token
	errToken := oAuth20Service.TokenRepository.Store(tokenResponseV3)
	if errToken != nil {
		errString := fmt.Errorf("Unable to store token. " + errToken.Error())
		logrus.Error(errString)

		return &events.LambdaFunctionURLResponse{}, errString
	}
	// start token local validation
	errValidateToken := validateToken(request.Namespace, request.UserID)
	if errValidateToken != nil {
		errString := fmt.Errorf("failed to validate token. %s", errValidateToken.Error())
		logrus.Error(errString)

		return &events.LambdaFunctionURLResponse{}, errString
	}

	// delete stat configuration
	inputDeleteTiedStat := &stat_configuration.DeleteTiedStatParams{
		Namespace: request.Namespace,
		StatCode:  request.StatCode,
	}
	errDeleteStat := statConfigService.DeleteTiedStat(inputDeleteTiedStat)
	if errDeleteStat != nil {
		errString := fmt.Errorf("failed to delete stat code config. %s", errDeleteStat.Error())
		logrus.Error(errString)

		return &events.LambdaFunctionURLResponse{}, errString
	}

	// delete user stat item
	inputDeleteUserStatItem := &user_statistic.DeleteUserStatItemsParams{
		Namespace: request.Namespace,
		StatCode:  request.StatCode,
		UserID:    request.UserID,
	}
	errDeleteUserStatItems := userStatisticService.DeleteUserStatItems(inputDeleteUserStatItem)
	if errDeleteUserStatItems != nil {
		errString := fmt.Errorf("failed to delete user stat code. %s", errDeleteUserStatItems.Error())
		logrus.Error(errString)

		return &events.LambdaFunctionURLResponse{}, errString
	}

	return &events.LambdaFunctionURLResponse{
		StatusCode: 204,
		Body:       "Successfully delete tied stat code configuration and it's stat item.",
	}, nil
}

func validateToken(namespace, userId string) error {
	// get the token
	accessToken, err := oAuth20Service.GetToken()
	if err != nil {
		return err
	}

	// initialize token validator
	tokenValidator := validator.NewTokenValidator(oAuth20Service, time.Hour)
	tokenValidator.Initialize()

	// validate stat config
	requiredPermissionStatConfig := validator.Permission{
		Action:   8, // delete
		Resource: fmt.Sprintf("ADMIN:NAMESPACE:%s:STAT", namespace),
	}
	errValidateStatConfig := tokenValidator.Validate(accessToken, &requiredPermissionStatConfig, &namespace, &userId)
	if errValidateStatConfig != nil {
		return errValidateStatConfig
	}

	// validate stat item
	requiredPermissionStatItem := validator.Permission{
		Action:   8, // delete
		Resource: fmt.Sprintf("ADMIN:NAMESPACE:%s:USER:%s:STATITEM", namespace, userId),
	}
	errValidateStatItem := tokenValidator.Validate(accessToken, &requiredPermissionStatItem, &namespace, &userId)
	if errValidateStatItem != nil {
		errString := fmt.Errorf("failed to validate permission for stat item. %s", errValidateStatItem)
		logrus.Error(errString)

		return errString
	}

	return nil
}

// convertTokenToTokenResponseV3 is used to convert accessToken from String to OauthmodelTokenResponseV3
func convertTokenToTokenResponseV3(accessToken string) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	tokenResponseV3 := &iamclientmodels.OauthmodelTokenResponseV3{}
	parsedToken, err := jwt.Parse(accessToken, func(token *jwt.Token) (interface{}, error) {
		return accessToken, nil
	})
	if parsedToken != nil {
		jsonPayload, errMarshal := json.Marshal(parsedToken.Claims)
		if errMarshal != nil {
			return nil, errMarshal
		}
		err = json.Unmarshal(jsonPayload, tokenResponseV3)
		if err != nil {
			return nil, err
		}
		tokenResponseV3.AccessToken = &accessToken

		return tokenResponseV3, nil
	}

	return nil, err
}

// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"fmt"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth/validator"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
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
	Limit     int    `json:"limit"`
	Offset    int    `json:"offset"`
	Tags      string `json:"tags"`
}

func main() {
	lambda.Start(Handler)
}

func Handler(evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	// parse the events body
	request := Request{}
	err := json.Unmarshal([]byte(evt.Body), &request)
	if err != nil {
		errString := fmt.Errorf("failed to parse the request. %s", err.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}

	// parse the access token
	reqToken := evt.Headers["authorization"]
	splitToken := strings.Split(reqToken, "Bearer ")
	if len(splitToken) == 1 || len(splitToken) > 2 {
		errString := fmt.Errorf("invalid token. Token split \"Bearer\" and token authorization")
		logrus.Print(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}
	// login client
	clientId := oAuth20Service.ConfigRepository.GetClientId()
	clientSecret := oAuth20Service.ConfigRepository.GetClientSecret()
	errLogin := oAuth20Service.LoginClient(&clientId, &clientSecret)
	if errLogin != nil {
		errString := fmt.Errorf("failed to login client. %s", errLogin.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}
	// start token validation
	errValidateToken := validateToken(splitToken[1], request.Namespace, request.UserID)
	if errValidateToken != nil {
		errString := fmt.Errorf("failed to validate token. %s", errValidateToken.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}

	// get stat configuration
	inputStatCode := &stat_configuration.GetStatParams{
		Namespace: request.Namespace,
		StatCode:  request.StatCode,
	}
	_, errStatCode := statConfigService.GetStatShort(inputStatCode)
	if errStatCode != nil {
		errString := fmt.Errorf("failed to get stat code. %s", errStatCode.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}

	// get user stat item
	limit := int32(request.Limit)
	offset := int32(request.Offset)
	inputUserStatItem := &user_statistic.GetUserStatItemsParams{
		Limit:     &limit,
		Namespace: request.Namespace,
		Offset:    &offset,
		StatCodes: &request.StatCode,
		Tags:      &request.Tags,
		UserID:    request.UserID,
	}
	getUserStatItem, errUserStatItem := userStatisticService.GetUserStatItemsShort(inputUserStatItem)
	if errUserStatItem != nil {
		errString := fmt.Errorf("failed to create user stat item. %s", errUserStatItem.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}

	var js []byte
	js, err = json.Marshal(getUserStatItem)
	if err != nil {
		errString := fmt.Errorf("failed to marshal the response. %s", err.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}

	return events.LambdaFunctionURLResponse{
		StatusCode: 200,
		Body:       string(js),
	}, nil
}

func validateToken(accessToken, namespace, userId string) error {
	// initialize token validator
	tokenValidator := validator.NewTokenValidator(oAuth20Service, time.Hour)
	tokenValidator.Initialize()

	// validate stat config
	requiredPermissionStatConfig := validator.Permission{
		Action:   2, // read
		Resource: fmt.Sprintf("ADMIN:NAMESPACE:%s:STAT", namespace),
	}
	errValidateStatConfig := tokenValidator.Validate(accessToken, &requiredPermissionStatConfig, &namespace, nil)
	if errValidateStatConfig != nil {
		return errValidateStatConfig
	}

	// validate stat item
	requiredPermissionStatItem := validator.Permission{
		Action:   2, // read
		Resource: fmt.Sprintf("ADMIN:NAMESPACE:%s:USER:%s:STATITEM", namespace, userId),
	}
	errValidateStatItem := tokenValidator.Validate(accessToken, &requiredPermissionStatItem, &namespace, nil)
	if errValidateStatItem != nil {
		return errValidateStatItem
	}

	return nil
}

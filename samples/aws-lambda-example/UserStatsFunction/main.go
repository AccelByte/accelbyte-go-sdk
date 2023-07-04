// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"context"
	"encoding/json"
	"fmt"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth/validator"
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
	userStatisticService = &social.UserStatisticService{
		Client:          factory.NewSocialClient(&configRepo),
		TokenRepository: &tokenRepo,
	}
)

func main() {
	lambda.Start(Handler)
}

func Handler(ctx context.Context, evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	reqToken := evt.Headers["authorization"]
	splitToken := strings.Split(reqToken, "Bearer ")
	if len(splitToken) == 1 || len(splitToken) > 2 {
		return events.LambdaFunctionURLResponse{
			Body:       "invalid token. Token split \"Bearer\" and token authorization",
			StatusCode: 400,
		}, nil
	}
	logrus.Print("Parse Access Token Done")

	// login client
	clientId := oAuth20Service.ConfigRepository.GetClientId()
	clientSecret := oAuth20Service.ConfigRepository.GetClientSecret()
	errLogin := oAuth20Service.LoginClient(&clientId, &clientSecret)
	if errLogin != nil {
		errString := fmt.Errorf("failed to login client. %s", errLogin.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}
	logrus.Print("Login Client Done")
	// start token validation
	httpRequest := evt.RequestContext.HTTP.Method
	errValidateToken := validateToken(splitToken[1], evt.QueryStringParameters["namespace"], evt.QueryStringParameters["userId"], httpRequest)
	if errValidateToken != nil {
		errString := fmt.Errorf("failed to validate token. %s", errValidateToken.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{}, errString
	}
	logrus.Print("Token Validation Done")

	// cases:
	switch httpRequest {
	case "GET":
		return getRequest(evt)
	case "POST":
		return postRequest(evt)
	case "DELETE":
		return deleteRequest(evt)
	default:
		return events.LambdaFunctionURLResponse{
			Body:       httpRequest + " request not supported",
			StatusCode: 400,
		}, nil
	}
}

func getRequest(evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	// get user stat item
	inputUserStatItem := &user_statistic.GetUserStatItemsParams{
		Namespace: evt.QueryStringParameters["namespace"],
		UserID:    evt.QueryStringParameters["userId"],
	}
	getUserStatItem, errUserStatItem := userStatisticService.GetUserStatItemsShort(inputUserStatItem)
	if errUserStatItem != nil {
		errString := fmt.Errorf("failed to create user stat item. %s", errUserStatItem.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{
			Body:       errUserStatItem.Error(),
			StatusCode: 400,
		}, nil
	}

	var js []byte
	js, err := json.Marshal(getUserStatItem)
	if err != nil {
		errString := fmt.Errorf("failed to marshal the response. %s", err.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{
			Body:       err.Error(),
			StatusCode: 400,
		}, nil
	}

	return events.LambdaFunctionURLResponse{
		StatusCode: 200,
		Body:       string(js),
	}, nil
}

func deleteRequest(evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	// delete user stat item
	inputDeleteUserStatItem := &user_statistic.DeleteUserStatItemsParams{
		Namespace: evt.QueryStringParameters["namespace"],
		StatCode:  evt.QueryStringParameters["statCode"],
		UserID:    evt.QueryStringParameters["userId"],
	}
	errDeleteUserStatItems := userStatisticService.DeleteUserStatItems(inputDeleteUserStatItem)
	if errDeleteUserStatItems != nil {
		errString := fmt.Errorf("failed to delete user stat code. %s", errDeleteUserStatItems.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{
			Body:       errDeleteUserStatItems.Error(),
			StatusCode: 400,
		}, nil
	}

	return events.LambdaFunctionURLResponse{
		StatusCode: 200,
		Body:       "User stat code deleted successfully",
	}, nil
}

func postRequest(evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	// create user stat item
	inputUserStatItem := &user_statistic.CreateUserStatItemParams{
		Namespace: evt.QueryStringParameters["namespace"],
		StatCode:  evt.QueryStringParameters["statCode"],
		UserID:    evt.QueryStringParameters["userId"],
	}
	errUserStatItem := userStatisticService.CreateUserStatItemShort(inputUserStatItem)
	if errUserStatItem != nil {
		errString := fmt.Errorf("failed to create user stat item. %s", errUserStatItem.Error())
		logrus.Error(errString)

		return events.LambdaFunctionURLResponse{
			Body:       errUserStatItem.Error(),
			StatusCode: 400,
		}, nil
	}

	return events.LambdaFunctionURLResponse{
		StatusCode: 200,
		Body:       "User stat code added successfully",
	}, nil
}

func validateToken(accessToken string, namespace string, userId string, httpRequest string) error {
	// initialize token validator
	tokenValidator := validator.NewTokenValidator(oAuth20Service, time.Hour)
	tokenValidator.Initialize()

	// validate stat item
	var action int
	switch httpRequest {
	case "GET":
		action = 2
	case "POST":
		action = 1
	case "DELETE":
		action = 8
	}
	requiredPermissionStatItem := validator.Permission{
		Action:   action,
		Resource: fmt.Sprintf("ADMIN:NAMESPACE:%s:USER:%s:STATITEM", namespace, userId),
	}
	errValidateStatItem := tokenValidator.Validate(accessToken, &requiredPermissionStatItem, &namespace, &userId)
	if errValidateStatItem != nil {
		return errValidateStatItem
	}

	return nil
}

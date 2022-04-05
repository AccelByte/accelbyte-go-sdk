// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/dgrijalva/jwt-go"
)

type TokenRepositoryImpl struct {
}

type ConfigRepositoryImpl struct {
}

type RequestParams struct {
	Namespace string `json:"namespace"`
	UserID    string `json:"userId"`
	StatCode  string `json:"statCode"`
}

type Request struct {
	AccessToken string        `json:"access_token"`
	Params      RequestParams `json:"params"`
}

var clientTokenV3 iamclientmodels.OauthmodelTokenResponseV3

func main() {
	lambda.Start(Handler)
}

func Handler(evt events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	request := Request{}
	err := json.Unmarshal([]byte(evt.Body), &request)
	if err != nil {
		return events.APIGatewayProxyResponse{}, err
	}
	accessToken := request.AccessToken
	tokenResponseV3, err := convertTokenToTokenResponseV3(accessToken)
	if err != nil {
		return events.APIGatewayProxyResponse{}, err
	}
	tokenRepositoryImpl := &TokenRepositoryImpl{}
	if tokenResponseV3 != nil {
		err = tokenRepositoryImpl.Store(*tokenResponseV3)
		if err != nil {
			return events.APIGatewayProxyResponse{}, err
		}
	}
	_, err = createUserStatItem(request.Params, tokenRepositoryImpl)
	if err != nil {
		return events.APIGatewayProxyResponse{}, err
	}

	return events.APIGatewayProxyResponse{
		StatusCode: 200,
	}, nil
}

func createUserStatItem(params RequestParams, tokenRepositoryImpl *TokenRepositoryImpl) (interface{}, error) {
	statisticService := service.StatisticService{
		SocialServiceClient: factory.NewSocialClient(&ConfigRepositoryImpl{}),
		TokenRepository:     tokenRepositoryImpl,
	}
	err := statisticService.CreateUserStatItem(params.Namespace, params.UserID, params.StatCode)
	if err != nil {
		return nil, err
	}

	return nil, nil
}

func convertTokenToTokenResponseV3(accessToken string) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	tokenResponseV3 := &iamclientmodels.OauthmodelTokenResponseV3{}
	parsedToken, err := jwt.Parse(accessToken, func(token *jwt.Token) (interface{}, error) {
		return accessToken, nil
	})
	if parsedToken != nil {
		jsonPayload, errJSON := json.Marshal(parsedToken.Claims)
		if errJSON != nil {
			return nil, errJSON
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

func (tokenRepository *TokenRepositoryImpl) Store(accessToken iamclientmodels.OauthmodelTokenResponseV3) error {
	clientTokenV3 = accessToken

	return nil
}

func (tokenRepository *TokenRepositoryImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	return &clientTokenV3, nil
}

func (tokenRepository *TokenRepositoryImpl) RemoveToken() error {
	return nil
}

func (configRepository *ConfigRepositoryImpl) GetClientId() string {
	return os.Getenv("APP_CLIENT_ID")
}

func (configRepository *ConfigRepositoryImpl) GetClientSecret() string {
	return os.Getenv("APP_CLIENT_SECRET")
}

func (configRepository *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return os.Getenv("ACCELBYTE_BASE_URL")
}

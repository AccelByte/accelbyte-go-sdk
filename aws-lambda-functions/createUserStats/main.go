package main

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/dgrijalva/jwt-go"
	"os"
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

func Handler(request *Request) (interface{}, error) {
	accessToken := request.AccessToken
	tokenResponseV3, err := convertTokenToTokenResponseV3(accessToken)
	if err != nil {
		return nil, err
	}
	tokenRepositoryImpl := &TokenRepositoryImpl{}
	if tokenResponseV3 != nil {
		err = tokenRepositoryImpl.Store(*tokenResponseV3)
		if err != nil {
			return nil, err
		}
	}
	return createUserStatItem(request.Params, tokenRepositoryImpl)
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
		jsonPayload, err := json.Marshal(parsedToken.Claims)
		if err != nil {
			return nil, err
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
	return os.Getenv("JUSTICE_BASE_URL")
}

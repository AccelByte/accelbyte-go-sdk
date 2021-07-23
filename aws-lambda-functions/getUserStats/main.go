package main

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/dgrijalva/jwt-go"
	"os"
)

type TokenRepositoryImpl struct {
}

type ConfigRepositoryImpl struct {
}

type RequestParams struct {
	Limit     int    `json:"limit"`
	Namespace string `json:"namespace"`
	Offset    int    `json:"offset"`
	StatCodes string `json:"statCodes"`
	Tags      string `json:"tags"`
	UserID    string `json:"userId"`
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
	params := convertRequestBodyToUserStatItemParams(request.Params)
	return getUserStatItem(params, tokenRepositoryImpl)
}

func getUserStatItem(params *user_statistic.GetUserStatItemsParams, tokenRepositoryImpl *TokenRepositoryImpl) (interface{}, error) {
	statisticService := service.StatisticService{
		SocialServiceClient: factory.NewSocialClient(&ConfigRepositoryImpl{}),
		TokenRepository:     tokenRepositoryImpl,
	}
	ok, err := statisticService.GetUserStatItems(params.Namespace, params.UserID, params.StatCodes, params.Tags, params.Limit, params.Offset)
	if err != nil {
		return nil, err
	}
	return ok, nil
}

func convertRequestBodyToUserStatItemParams(requestParams RequestParams) *user_statistic.GetUserStatItemsParams {
	offset := int32(requestParams.Offset)
	limit := int32(requestParams.Limit)
	params := user_statistic.GetUserStatItemsParams{
		Namespace: requestParams.Namespace,
		UserID:    requestParams.UserID,
		StatCodes: &requestParams.StatCodes,
		Tags:      &requestParams.Tags,
		Offset:    &offset,
		Limit:     &limit,
	}
	return &params
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

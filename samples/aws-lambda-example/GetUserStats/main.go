// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"fmt"
	"os"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/dgrijalva/jwt-go"
)

type TokenRepositoryImpl struct {
	IssuedTime  *time.Time
	accessToken *iamclientmodels.OauthmodelTokenResponseV3
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

func Handler(evt events.LambdaFunctionURLRequest) (events.LambdaFunctionURLResponse, error) {
	request := Request{}
	err := json.Unmarshal([]byte(evt.Body), &request)
	if err != nil {
		return events.LambdaFunctionURLResponse{}, err
	}
	accessToken := request.AccessToken
	tokenResponseV3, err := convertTokenToTokenResponseV3(accessToken)
	if err != nil {
		return events.LambdaFunctionURLResponse{}, err
	}
	tokenRepositoryImpl := &TokenRepositoryImpl{}
	if tokenResponseV3 != nil {
		err = tokenRepositoryImpl.Store(*tokenResponseV3)
		if err != nil {
			return events.LambdaFunctionURLResponse{}, err
		}
	}
	params := convertRequestBodyToUserStatItemParams(request.Params)
	var res *socialclientmodels.UserStatItemPagingSlicedResult
	res, err = getUserStatItem(params, tokenRepositoryImpl)
	if err != nil {
		return events.LambdaFunctionURLResponse{}, err
	}
	var js []byte
	js, err = json.Marshal(res)
	if err != nil {
		return events.LambdaFunctionURLResponse{}, err
	}

	return events.LambdaFunctionURLResponse{
		StatusCode: 200,
		Body:       string(js),
	}, nil
}

func getUserStatItem(params *user_statistic.GetUserStatItemsParams, tokenRepositoryImpl *TokenRepositoryImpl) (*socialclientmodels.UserStatItemPagingSlicedResult, error) {
	statisticService := social.UserStatisticService{
		Client:          factory.NewSocialClient(&ConfigRepositoryImpl{}),
		TokenRepository: tokenRepositoryImpl,
	}
	ok, err := statisticService.GetUserStatItemsShort(params)
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
	timeNow := time.Now().UTC()
	tokenRepository.IssuedTime = &timeNow
	tokenRepository.accessToken = &accessToken

	return nil
}

func (tokenRepository *TokenRepositoryImpl) GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	if tokenRepository.accessToken == nil {
		return nil, fmt.Errorf("empty access Token")
	}

	return &clientTokenV3, nil
}

func (tokenRepository *TokenRepositoryImpl) RemoveToken() error {
	tokenRepository.IssuedTime = nil
	tokenRepository.accessToken = nil

	return nil
}

func (tokenRepository *TokenRepositoryImpl) TokenIssuedTimeUTC() time.Time {
	return *tokenRepository.IssuedTime
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

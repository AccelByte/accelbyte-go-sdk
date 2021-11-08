// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"encoding/json"
	"errors"
	"net/http"
	"net/url"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type OAuth20ExtensionService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (a *OAuth20ExtensionService) GetCountryLocationV3() (*iamclientmodels.OauthmodelCountryLocationResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := a.Client.OAuth20Extension.GetCountryLocationV3(nil, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *OAuth20ExtensionService) Logout() error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	input := &o_auth2_0.TokenRevocationV3Params{
		Token: *accessToken.AccessToken,
	}
	clientId := a.ConfigRepository.GetClientId()
	clientSecret := a.ConfigRepository.GetClientSecret()
	_, badRequest, unauthorized, err := a.Client.OAuth20.TokenRevocationV3(input, client.BasicAuth(clientId, clientSecret))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	err = a.TokenRepository.RemoveToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (a *OAuth20ExtensionService) PlatformAuthenticationV3(input *o_auth2_0_extension.PlatformAuthenticationV3Params) error {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = a.Client.OAuth20Extension.PlatformAuthenticationV3(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (a *OAuth20ExtensionService) UserAuthenticationV3(input *o_auth2_0_extension.UserAuthenticationV3Params) (string, error) {
	logrus.Infof("Invoke authenticate: %s %s %s", input.RequestID, input.UserName, input.Password)
	clientId := a.ConfigRepository.GetClientId()
	if len(clientId) == 0 {
		return "", errors.New("client not registered")
	}
	httpClient := &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	param := &o_auth2_0_extension.UserAuthenticationV3Params{
		ClientID:   &clientId,
		Password:   input.Password,
		RequestID:  input.RequestID,
		UserName:   input.UserName,
		HTTPClient: httpClient,
	}
	authenticated, err :=
		a.Client.OAuth20Extension.UserAuthenticationV3(param, nil)
	if err != nil {
		return "", err
	}
	parsedUrl, err := url.Parse(authenticated.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedUrl.RawQuery)
	if err != nil {
		return "", err
	}
	errorDescParam := query["error_description"]
	if errorDescParam != nil {
		return "", errors.New(errorDescParam[0])
	}
	code := query["code"][0]
	return code, nil
}

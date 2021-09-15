// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

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

type OauthExtService struct {
	IamService       *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (oauthExtService OauthExtService) GetCountryLocationV3() (*iamclientmodels.OauthmodelCountryLocationResponse, error) {
	token, err := oauthExtService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := oauthExtService.IamService.OAuth20Extension.GetCountryLocationV3(nil, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (oauthExtService OauthExtService) Logout() error {
	accessToken, err := oauthExtService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &o_auth2_0.TokenRevocationV3Params{
		Token: *accessToken.AccessToken,
	}
	clientId := oauthExtService.ConfigRepository.GetClientId()
	clientSecret := oauthExtService.ConfigRepository.GetClientSecret()
	_, badRequest, unauthorized, err := oauthExtService.IamService.OAuth20.TokenRevocationV3(param, client.BasicAuth(clientId, clientSecret))
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
	err = oauthExtService.TokenRepository.RemoveToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (oauthExtService OauthExtService) PlatformAuthenticationV3(code, error, openIdAssocHandle, openIdClaimedID, openIdIdentity, openIdMode, openIdNs, openIdEndpoint, openIdResponseNonce, openIdReturnTo, openIdSig, openIdSigned *string, platformID, state string) error {
	token, err := oauthExtService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &o_auth2_0_extension.PlatformAuthenticationV3Params{
		Code:                code,
		Error:               error,
		OpenidAssocHandle:   openIdAssocHandle,
		OpenidClaimedID:     openIdClaimedID,
		OpenidIdentity:      openIdIdentity,
		OpenidMode:          openIdMode,
		OpenidNs:            openIdNs,
		OpenidOpEndpoint:    openIdEndpoint,
		OpenidResponseNonce: openIdResponseNonce,
		OpenidReturnTo:      openIdReturnTo,
		OpenidSig:           openIdSig,
		OpenidSigned:        openIdSigned,
		PlatformID:          platformID,
		State:               state,
	}
	_, err = oauthExtService.IamService.OAuth20Extension.PlatformAuthenticationV3(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (oauthExtService OauthExtService) UserAuthenticationV3(password string, requestID, userName string) (string, error) {
	clientId := oauthExtService.ConfigRepository.GetClientId()
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
		Password:   password,
		RequestID:  requestID,
		UserName:   userName,
		HTTPClient: httpClient,
	}
	authenticated, err :=
		oauthExtService.IamService.OAuth20Extension.UserAuthenticationV3(param, nil)
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

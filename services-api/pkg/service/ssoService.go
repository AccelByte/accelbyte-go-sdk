// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type SSOService struct {
	IamService       *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

// LoginSSOClient is used to logins to SSO client with provided platform Id
func (ssoService *SSOService) LoginSSOClient(platformID string, payload *string) error {
	token, err := ssoService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &s_s_o.LoginSSOClientParams{
		Payload:    payload,
		PlatformID: platformID,
	}
	_, err = ssoService.IamService.Sso.LoginSSOClient(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("successfully login to SSO client with provided platform Id ")
	return nil
}

// LogoutSSOClient is used to logout user's session on platform that logged in using SSO
func (ssoService *SSOService) LogoutSSOClient(platformID string) error {
	token, err := ssoService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &s_s_o.LogoutSSOClientParams{
		PlatformID: platformID,
	}
	_, notFound, unprocessableEntity, internalServer, err := ssoService.IamService.Sso.LogoutSSOClient(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return unprocessableEntity
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	logrus.Info("successfully logout user's session on platform that logged in using SSO")
	return nil
}

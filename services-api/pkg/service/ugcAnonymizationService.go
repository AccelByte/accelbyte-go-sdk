// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type UgcAnonymizationConfigService struct {
	UgcAnonymizationConfigServiceClient *ugcclient.JusticeUgcService
	TokenRepository                     repository.TokenRepository
}

// AdminDeleteAllUserChannels deletes all user channel
func (u *UgcAnonymizationConfigService) AdminDeleteAllUserChannels(namespace, userId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.AdminDeleteAllUserChannelsParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, notFound, internalServer, err := u.UgcAnonymizationConfigServiceClient.Anonymization.AdminDeleteAllUserChannels(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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
	return nil
}

// AdminDeleteAllUserContents deletes all user content
func (u *UgcAnonymizationConfigService) AdminDeleteAllUserContents(namespace, userId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.AdminDeleteAllUserContentsParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, notFound, internalServer, err := u.UgcAnonymizationConfigServiceClient.Anonymization.AdminDeleteAllUserContents(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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
	return nil
}

// AdminDeleteAllUserGroup deletes all user group
func (u *UgcAnonymizationConfigService) AdminDeleteAllUserGroup(namespace, userId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.AdminDeleteAllUserGroupParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, notFound, internalServer, err := u.UgcAnonymizationConfigServiceClient.Anonymization.AdminDeleteAllUserGroup(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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
	return nil
}

// AdminDeleteAllUserStates removes all user related state likes downloads followers following
func (u *UgcAnonymizationConfigService) AdminDeleteAllUserStates(namespace, userId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.AdminDeleteAllUserStatesParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, internalServer, err := u.UgcAnonymizationConfigServiceClient.Anonymization.AdminDeleteAllUserStates(params, client.BearerToken(*token.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// DeleteAllUserChannel deletes all user channel
func (u *UgcAnonymizationConfigService) DeleteAllUserChannel(namespace, userId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.DeleteAllUserChannelParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, notFound, internalServer, err := u.UgcAnonymizationConfigServiceClient.Anonymization.DeleteAllUserChannel(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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
	return nil
}

// DeleteAllUserContents deletes all user content
func (u *UgcAnonymizationConfigService) DeleteAllUserContents(namespace, userId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.DeleteAllUserContentsParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, notFound, internalServer, err := u.UgcAnonymizationConfigServiceClient.Anonymization.DeleteAllUserContents(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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
	return nil
}

// DeleteAllUserGroup deletes all user group
func (u *UgcAnonymizationConfigService) DeleteAllUserGroup(namespace, userId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.DeleteAllUserGroupParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, unauthorized, notFound, internalServer, err := u.UgcAnonymizationConfigServiceClient.Anonymization.DeleteAllUserGroup(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
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
	return nil
}

// DeleteAllUserStates removes all user related state likes downloads followers following
func (u *UgcAnonymizationConfigService) DeleteAllUserStates(namespace, userId string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &anonymization.DeleteAllUserStatesParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, badRequest, unauthorized, internalServer, err := u.UgcAnonymizationConfigServiceClient.Anonymization.DeleteAllUserStates(params, client.BearerToken(*token.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

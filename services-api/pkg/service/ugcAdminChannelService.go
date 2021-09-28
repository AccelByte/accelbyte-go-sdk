// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	nr "github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AdminChannelConfigService struct {
	UgcServiceClient *ugcclient.JusticeUgcService
	TokenRepository  repository.TokenRepository
}

// AdminCreateChannel creates channel
func (u *AdminChannelConfigService) AdminCreateChannel(namespace string, body *ugcclientmodels.ModelsChannelRequest) (*ugcclientmodels.ModelsChannelResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminCreateChannelParams{
		Body:      body,
		Namespace: namespace,
	}
	created, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminChannel.AdminCreateChannel(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

// AdminDeleteChannel deletes channel
func (u *AdminChannelConfigService) AdminDeleteChannel(namespace, userId, channelId string) (*ugcclientmodels.ModelsChannelResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminDeleteChannelParams{
		ChannelID: channelId,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminChannel.AdminDeleteChannel(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminGetChannel gets channels
func (u *AdminChannelConfigService) AdminGetChannel(namespace, userId string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminGetChannelParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminChannel.AdminGetChannel(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// AdminUpdateChannel updates channel
func (u *AdminChannelConfigService) AdminUpdateChannel(namespace, userId, channelId string, body *ugcclientmodels.ModelsChannelRequest) (*ugcclientmodels.ModelsChannelResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminUpdateChannelParams{
		Body:      body,
		ChannelID: channelId,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminChannel.AdminUpdateChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminDeleteChannel deletes channel
func (u *AdminChannelConfigService) SingleAdminDeleteChannel(namespace, channelId string) (*ugcclientmodels.ModelsChannelResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminDeleteChannelParams{
		ChannelID: channelId,
		Namespace: namespace,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminChannel.SingleAdminDeleteChannel(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminGetChannel gets channel
func (u *AdminChannelConfigService) SingleAdminGetChannel(namespace string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedGetChannelResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminGetChannelParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminChannel.SingleAdminGetChannel(params, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// SingleAdminUpdateChannel updates channel
func (u *AdminChannelConfigService) SingleAdminUpdateChannel(namespace, channelId string, body *ugcclientmodels.ModelsChannelRequest) (*ugcclientmodels.ModelsChannelResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminUpdateChannelParams{
		Body:      body,
		ChannelID: channelId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminChannel.SingleAdminUpdateChannel(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

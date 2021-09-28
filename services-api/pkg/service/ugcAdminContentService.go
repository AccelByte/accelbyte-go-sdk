// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	nr "github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AdminContentConfigService struct {
	UgcServiceClient *ugcclient.JusticeUgcService
	TokenRepository  repository.TokenRepository
}

// AdminDeleteContent deletes content
func (u *AdminContentConfigService) AdminDeleteContent(namespace, userId, channelId, contentId string) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminDeleteContentParams{
		ChannelID: channelId,
		ContentID: contentId,
		Namespace: namespace,
		UserID:    userId,
	}
	created, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminDeleteContent(params, client.BearerToken(*token.AccessToken))
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

// AdminDownloadContentPreview gets content preview
func (u *AdminContentConfigService) AdminDownloadContentPreview(namespace, contentId string) (*ugcclientmodels.ModelsGetContentPreviewResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminDownloadContentPreviewParams{
		ContentID: contentId,
		Namespace: namespace,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminDownloadContentPreview(params, client.BearerToken(*token.AccessToken))
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

// AdminGetContent gets user's generated contents
func (u *AdminContentConfigService) AdminGetContent(namespace, userId string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminGetContentParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminGetContent(params, client.BearerToken(*token.AccessToken))
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

// AdminGetSpecificContent gets user specific content
func (u *AdminContentConfigService) AdminGetSpecificContent(namespace, contentId string) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminGetSpecificContentParams{
		ContentID: contentId,
		Namespace: namespace,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminGetSpecificContent(params, client.BearerToken(*token.AccessToken))
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

// AdminHideUserContent hides unhidden user's generated contents
func (u *AdminContentConfigService) AdminHideUserContent(namespace, userId, contentId string,
	body *ugcclientmodels.ModelsHideContentRequest) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminHideUserContentParams{
		Body:      body,
		ContentID: contentId,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminHideUserContent(params, client.BearerToken(*token.AccessToken))
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

// AdminSearchChannelSpecificContent searches contents specific to a channel
func (u *AdminContentConfigService) AdminSearchChannelSpecificContent(
	namespace,
	channelId string,
	sortBy,
	orderBy,
	name,
	creator,
	contentType,
	subType,
	tags,
	isOfficial,
	limit,
	offset *string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminSearchChannelSpecificContentParams{
		ChannelID:  channelId,
		Creator:    creator,
		Isofficial: isOfficial,
		Limit:      limit,
		Name:       name,
		Namespace:  namespace,
		Offset:     offset,
		Orderby:    orderBy,
		Sortby:     sortBy,
		Subtype:    subType,
		Tags:       tags,
		Type:       contentType,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminSearchChannelSpecificContent(params, client.BearerToken(*token.AccessToken))
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

// AdminSearchContent searches contents
func (u *AdminContentConfigService) AdminSearchContent(
	namespace string,
	sortBy,
	orderBy,
	name,
	creator,
	contentType,
	subType,
	tags,
	isOfficial,
	limit,
	offset *string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminSearchContentParams{
		Creator:    creator,
		Isofficial: isOfficial,
		Limit:      limit,
		Name:       name,
		Namespace:  namespace,
		Offset:     offset,
		Orderby:    orderBy,
		Sortby:     sortBy,
		Subtype:    subType,
		Tags:       tags,
		Type:       contentType,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminSearchContent(params, client.BearerToken(*token.AccessToken))
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

// AdminUpdateContentDirect updates content to a channel
func (u *AdminContentConfigService) AdminUpdateContentDirect(
	namespace,
	userId,
	channelId,
	contentId string,
	body *ugcclientmodels.ModelsCreateContentRequest) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminUpdateContentDirectParams{
		Body:      body,
		ChannelID: channelId,
		ContentID: contentId,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminUpdateContentDirect(params, client.BearerToken(*token.AccessToken))
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

// AdminUpdateContentS3 updates content to s3 bucket
func (u *AdminContentConfigService) AdminUpdateContentS3(
	namespace,
	userId,
	channelId,
	contentId string,
	body *ugcclientmodels.ModelsCreateContentRequestS3) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminUpdateContentS3Params{
		Body:      body,
		ChannelID: channelId,
		ContentID: contentId,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminUpdateContentS3(params, client.BearerToken(*token.AccessToken))
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

// AdminUploadContentDirect uploads content to a channel
func (u *AdminContentConfigService) AdminUploadContentDirect(
	namespace,
	channelId string,
	body *ugcclientmodels.ModelsCreateContentRequest) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminUploadContentDirectParams{
		Body:      body,
		ChannelID: channelId,
		Namespace: namespace,
	}
	created, badRequest, unauthorized, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminUploadContentDirect(params, client.BearerToken(*token.AccessToken))
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

// AdminUploadContentS3 uploads content to s3 bucket
func (u *AdminContentConfigService) AdminUploadContentS3(
	namespace,
	channelId string,
	body *ugcclientmodels.ModelsCreateContentRequestS3) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.AdminUploadContentS3Params{
		Body:      body,
		ChannelID: channelId,
		Namespace: namespace,
	}
	created, badRequest, unauthorized, internalServer, err := u.UgcServiceClient.NrAdminContent.AdminUploadContentS3(params, client.BearerToken(*token.AccessToken))
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

// SingleAdminDeleteContent deletes content
func (u *AdminContentConfigService) SingleAdminDeleteContent(namespace, channelId, contentId string) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminDeleteContentParams{
		ChannelID: channelId,
		ContentID: contentId,
		Namespace: namespace,
	}
	created, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.SingleAdminDeleteContent(params, client.BearerToken(*token.AccessToken))
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

// SingleAdminGetContent gets user's generated contents
func (u *AdminContentConfigService) SingleAdminGetContent(namespace string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminGetContentParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.SingleAdminGetContent(params, client.BearerToken(*token.AccessToken))
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

// SingleAdminUpdateContentDirect updates content to a channel
func (u *AdminContentConfigService) SingleAdminUpdateContentDirect(namespace, channelId, contentId string,
	body *ugcclientmodels.ModelsCreateContentRequest) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminUpdateContentDirectParams{
		Body:      body,
		ChannelID: channelId,
		ContentID: contentId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.SingleAdminUpdateContentDirect(params, client.BearerToken(*token.AccessToken))
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

// SingleAdminUpdateContentS3 updates content to s3 bucket
func (u *AdminContentConfigService) SingleAdminUpdateContentS3(namespace, channelId, contentId string,
	body *ugcclientmodels.ModelsCreateContentRequestS3) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.SingleAdminUpdateContentS3Params{
		Body:      body,
		ChannelID: channelId,
		ContentID: contentId,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrAdminContent.SingleAdminUpdateContentS3(params, client.BearerToken(*token.AccessToken))
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

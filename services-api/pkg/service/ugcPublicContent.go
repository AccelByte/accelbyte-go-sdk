package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type UGCPublicContentService struct {
	UgcServiceClient *ugcclient.JusticeUgcService
	TokenRepository  repository.TokenRepository
}

func (u *UGCPublicContentService) CreateContentDirect(body *ugcclientmodels.ModelsCreateContentRequest, channelID, namespace, userID string) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.CreateContentDirectParams{
		Body:      body,
		ChannelID: channelID,
		Namespace: namespace,
		UserID:    userID,
	}
	created, badRequest, unauthorized, internalServer, err := u.UgcServiceClient.NrPublicContent.CreateContentDirect(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) CreateContentS3(body *ugcclientmodels.ModelsCreateContentRequestS3, channelID, namespace, userID string) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.CreateContentS3Params{
		Body:      body,
		ChannelID: channelID,
		Namespace: namespace,
		UserID:    userID,
	}
	created, badRequest, unauthorized, internalServer, err := u.UgcServiceClient.NrPublicContent.CreateContentS3(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) DeleteContent(channelID, contentID, namespace, userID string) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &nr_public_content.DeleteContentParams{
		ChannelID: channelID,
		ContentID: contentID,
		Namespace: namespace,
		UserID:    userID,
	}
	_, badRequest, unauthorized, internalServer, err := u.UgcServiceClient.NrPublicContent.DeleteContent(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) DownloadContentByShareCode(namespace, shareCode string) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.DownloadContentByShareCodeParams{
		Namespace: namespace,
		ShareCode: shareCode,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicContent.DownloadContentByShareCode(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) PublicDownloadContentByContentID(contentID, namespace string) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.PublicDownloadContentByContentIDParams{
		ContentID: contentID,
		Namespace: namespace,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicContent.PublicDownloadContentByContentID(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) PublicDownloadContentPreview(contentID, namespace string) (*ugcclientmodels.ModelsGetContentPreviewResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.PublicDownloadContentPreviewParams{
		ContentID: contentID,
		Namespace: namespace,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicContent.PublicDownloadContentPreview(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) PublicGetUserContent(limit *string, namespace string, offset *string, userID string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.PublicGetUserContentParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userID,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicContent.PublicGetUserContent(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) PublicSearchContent(creator, isOfficial, limit, name *string, namespace string, offset, orderBy, sortBy, subType, tags, type_ *string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.PublicSearchContentParams{
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
		Type:       type_,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicContent.PublicSearchContent(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) SearchChannelSpecificContent(channelID string, creator, isOfficial, limit, name *string, namespace string, offset, orderBy, sortBy, subType, tags, type_ *string) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.SearchChannelSpecificContentParams{
		ChannelID:  channelID,
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
		Type:       type_,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicContent.SearchChannelSpecificContent(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) UpdateContentDirect(body *ugcclientmodels.ModelsCreateContentRequest, channelID, contentID, namespace, userID string) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.UpdateContentDirectParams{
		Body:      body,
		ChannelID: channelID,
		ContentID: contentID,
		Namespace: namespace,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicContent.UpdateContentDirect(params, client.BearerToken(*token.AccessToken))
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

func (u *UGCPublicContentService) UpdateContentS3(body *ugcclientmodels.ModelsCreateContentRequestS3, channelID, contentID, namespace, userID string) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr_public_content.UpdateContentS3Params{
		Body:      body,
		ChannelID: channelID,
		ContentID: contentID,
		Namespace: namespace,
		UserID:    userID,
	}
	ok, badRequest, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicContent.UpdateContentS3(params, client.BearerToken(*token.AccessToken))
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

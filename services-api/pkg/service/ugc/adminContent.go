// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminContentService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

func (a *AdminContentService) AdminUploadContentDirect(input *admin_content.AdminUploadContentDirectParams) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := a.Client.AdminContent.AdminUploadContentDirect(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminContentService) AdminUploadContentS3(input *admin_content.AdminUploadContentS3Params) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := a.Client.AdminContent.AdminUploadContentS3(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminContentService) SingleAdminUpdateContentS3(input *admin_content.SingleAdminUpdateContentS3Params) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.SingleAdminUpdateContentS3(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminSearchChannelSpecificContent(input *admin_content.AdminSearchChannelSpecificContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminSearchChannelSpecificContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) SingleAdminUpdateContentDirect(input *admin_content.SingleAdminUpdateContentDirectParams) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.SingleAdminUpdateContentDirect(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) SingleAdminDeleteContent(input *admin_content.SingleAdminDeleteContentParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.SingleAdminDeleteContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminContentService) SingleAdminGetContent(input *admin_content.SingleAdminGetContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.SingleAdminGetContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminSearchContent(input *admin_content.AdminSearchContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminSearchContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminGetSpecificContent(input *admin_content.AdminGetSpecificContentParams) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminGetSpecificContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminDownloadContentPreview(input *admin_content.AdminDownloadContentPreviewParams) (*ugcclientmodels.ModelsGetContentPreviewResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminDownloadContentPreview(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminUpdateScreenshots(input *admin_content.AdminUpdateScreenshotsParams) (*ugcclientmodels.ModelsUpdateScreenshotResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminUpdateScreenshots(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminUploadContentScreenshot(input *admin_content.AdminUploadContentScreenshotParams) (*ugcclientmodels.ModelsCreateScreenshotResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminUploadContentScreenshot(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminContentService) AdminDeleteContentScreenshot(input *admin_content.AdminDeleteContentScreenshotParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminDeleteContentScreenshot(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminContentService) AdminUpdateContentS3(input *admin_content.AdminUpdateContentS3Params) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminUpdateContentS3(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminUpdateContentDirect(input *admin_content.AdminUpdateContentDirectParams) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminUpdateContentDirect(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminDeleteContent(input *admin_content.AdminDeleteContentParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminDeleteContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminContentService) AdminGetContent(input *admin_content.AdminGetContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminGetContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminHideUserContent(input *admin_content.AdminHideUserContentParams) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.AdminContent.AdminHideUserContent(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminUploadContentDirectShort(input *admin_content.AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	created, err := a.Client.AdminContent.AdminUploadContentDirectShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminContentService) AdminUploadContentS3Short(input *admin_content.AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	created, err := a.Client.AdminContent.AdminUploadContentS3Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminContentService) SingleAdminUpdateContentS3Short(input *admin_content.SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	ok, err := a.Client.AdminContent.SingleAdminUpdateContentS3Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminSearchChannelSpecificContentShort(input *admin_content.AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	ok, err := a.Client.AdminContent.AdminSearchChannelSpecificContentShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) SingleAdminUpdateContentDirectShort(input *admin_content.SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	ok, err := a.Client.AdminContent.SingleAdminUpdateContentDirectShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) SingleAdminDeleteContentShort(input *admin_content.SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.AdminContent.SingleAdminDeleteContentShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminContentService) SingleAdminGetContentShort(input *admin_content.SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	ok, err := a.Client.AdminContent.SingleAdminGetContentShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminSearchContentShort(input *admin_content.AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	ok, err := a.Client.AdminContent.AdminSearchContentShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminGetSpecificContentShort(input *admin_content.AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	ok, err := a.Client.AdminContent.AdminGetSpecificContentShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminDownloadContentPreviewShort(input *admin_content.AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsGetContentPreviewResponse, error) {
	ok, err := a.Client.AdminContent.AdminDownloadContentPreviewShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminUpdateScreenshotsShort(input *admin_content.AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsUpdateScreenshotResponse, error) {
	ok, err := a.Client.AdminContent.AdminUpdateScreenshotsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminUploadContentScreenshotShort(input *admin_content.AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateScreenshotResponse, error) {
	created, err := a.Client.AdminContent.AdminUploadContentScreenshotShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (a *AdminContentService) AdminDeleteContentScreenshotShort(input *admin_content.AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.AdminContent.AdminDeleteContentScreenshotShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminContentService) AdminUpdateContentS3Short(input *admin_content.AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	ok, err := a.Client.AdminContent.AdminUpdateContentS3Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminUpdateContentDirectShort(input *admin_content.AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	ok, err := a.Client.AdminContent.AdminUpdateContentDirectShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminDeleteContentShort(input *admin_content.AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.AdminContent.AdminDeleteContentShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminContentService) AdminGetContentShort(input *admin_content.AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	ok, err := a.Client.AdminContent.AdminGetContentShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminContentService) AdminHideUserContentShort(input *admin_content.AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	ok, err := a.Client.AdminContent.AdminHideUserContentShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
)

type PublicContentService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use SearchChannelSpecificContentShort instead
func (p *PublicContentService) SearchChannelSpecificContent(input *public_content.SearchChannelSpecificContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.SearchChannelSpecificContent(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicSearchContentShort instead
func (p *PublicContentService) PublicSearchContent(input *public_content.PublicSearchContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.PublicSearchContent(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGetContentBulkShort instead
func (p *PublicContentService) PublicGetContentBulk(input *public_content.PublicGetContentBulkParams) ([]*ugcclientmodels.ModelsContentDownloadResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := p.Client.PublicContent.PublicGetContentBulk(input, client.BearerToken(*token.AccessToken))
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

	return ok.GetPayload(), nil
}

// Deprecated: Use DownloadContentByShareCodeShort instead
func (p *PublicContentService) DownloadContentByShareCode(input *public_content.DownloadContentByShareCodeParams) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.DownloadContentByShareCode(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicDownloadContentByContentIDShort instead
func (p *PublicContentService) PublicDownloadContentByContentID(input *public_content.PublicDownloadContentByContentIDParams) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.PublicDownloadContentByContentID(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicDownloadContentPreviewShort instead
func (p *PublicContentService) PublicDownloadContentPreview(input *public_content.PublicDownloadContentPreviewParams) (*ugcclientmodels.ModelsGetContentPreviewResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.PublicDownloadContentPreview(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateContentDirectShort instead
func (p *PublicContentService) CreateContentDirect(input *public_content.CreateContentDirectParams) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := p.Client.PublicContent.CreateContentDirect(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateContentS3Short instead
func (p *PublicContentService) CreateContentS3(input *public_content.CreateContentS3Params) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := p.Client.PublicContent.CreateContentS3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateContentS3Short instead
func (p *PublicContentService) UpdateContentS3(input *public_content.UpdateContentS3Params) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.UpdateContentS3(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateContentDirectShort instead
func (p *PublicContentService) UpdateContentDirect(input *public_content.UpdateContentDirectParams) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.UpdateContentDirect(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteContentShort instead
func (p *PublicContentService) DeleteContent(input *public_content.DeleteContentParams) error {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.DeleteContent(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGetUserContentShort instead
func (p *PublicContentService) PublicGetUserContent(input *public_content.PublicGetUserContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.PublicGetUserContent(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateScreenshotsShort instead
func (p *PublicContentService) UpdateScreenshots(input *public_content.UpdateScreenshotsParams) (*ugcclientmodels.ModelsUpdateScreenshotResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.UpdateScreenshots(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UploadContentScreenshotShort instead
func (p *PublicContentService) UploadContentScreenshot(input *public_content.UploadContentScreenshotParams) (*ugcclientmodels.ModelsCreateScreenshotResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := p.Client.PublicContent.UploadContentScreenshot(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteContentScreenshotShort instead
func (p *PublicContentService) DeleteContentScreenshot(input *public_content.DeleteContentScreenshotParams) error {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := p.Client.PublicContent.DeleteContentScreenshot(input, client.BearerToken(*token.AccessToken))
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

func (p *PublicContentService) SearchChannelSpecificContentShort(input *public_content.SearchChannelSpecificContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.SearchChannelSpecificContentShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) PublicSearchContentShort(input *public_content.PublicSearchContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.PublicSearchContentShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) PublicGetContentBulkShort(input *public_content.PublicGetContentBulkParams) ([]*ugcclientmodels.ModelsContentDownloadResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.PublicGetContentBulkShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) DownloadContentByShareCodeShort(input *public_content.DownloadContentByShareCodeParams) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.DownloadContentByShareCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) PublicDownloadContentByContentIDShort(input *public_content.PublicDownloadContentByContentIDParams) (*ugcclientmodels.ModelsContentDownloadResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.PublicDownloadContentByContentIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) PublicDownloadContentPreviewShort(input *public_content.PublicDownloadContentPreviewParams) (*ugcclientmodels.ModelsGetContentPreviewResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.PublicDownloadContentPreviewShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) CreateContentDirectShort(input *public_content.CreateContentDirectParams) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	created, err := p.Client.PublicContent.CreateContentDirectShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (p *PublicContentService) CreateContentS3Short(input *public_content.CreateContentS3Params) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	created, err := p.Client.PublicContent.CreateContentS3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (p *PublicContentService) UpdateContentS3Short(input *public_content.UpdateContentS3Params) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.UpdateContentS3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) UpdateContentDirectShort(input *public_content.UpdateContentDirectParams) (*ugcclientmodels.ModelsCreateContentResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.UpdateContentDirectShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) DeleteContentShort(input *public_content.DeleteContentParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.PublicContent.DeleteContentShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (p *PublicContentService) PublicGetUserContentShort(input *public_content.PublicGetUserContentParams) (*ugcclientmodels.ModelsPaginatedContentDownloadResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.PublicGetUserContentShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) UpdateScreenshotsShort(input *public_content.UpdateScreenshotsParams) (*ugcclientmodels.ModelsUpdateScreenshotResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.PublicContent.UpdateScreenshotsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicContentService) UploadContentScreenshotShort(input *public_content.UploadContentScreenshotParams) (*ugcclientmodels.ModelsCreateScreenshotResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	created, err := p.Client.PublicContent.UploadContentScreenshotShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (p *PublicContentService) DeleteContentScreenshotShort(input *public_content.DeleteContentScreenshotParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.PublicContent.DeleteContentScreenshotShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

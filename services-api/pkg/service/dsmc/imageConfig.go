// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ImageConfigService struct {
	Client           *dsmcclient.JusticeDsmcService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *ImageConfigService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use UpdateImageShort instead.
func (aaa *ImageConfigService) UpdateImage(input *image_config.UpdateImageParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := aaa.Client.ImageConfig.UpdateImage(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use CreateImageShort instead.
func (aaa *ImageConfigService) CreateImage(input *image_config.CreateImageParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, conflict, internalServerError, err := aaa.Client.ImageConfig.CreateImage(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use ImportImagesShort instead.
func (aaa *ImageConfigService) ImportImages(input *image_config.ImportImagesParams) (*dsmcclientmodels.ModelsImportResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := aaa.Client.ImageConfig.ImportImages(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use CreateImagePatchShort instead.
func (aaa *ImageConfigService) CreateImagePatch(input *image_config.CreateImagePatchParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, conflict, internalServerError, err := aaa.Client.ImageConfig.CreateImagePatch(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use ListImagesShort instead.
func (aaa *ImageConfigService) ListImages(input *image_config.ListImagesParams) (*dsmcclientmodels.ModelsListImageResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := aaa.Client.ImageConfig.ListImages(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteImageShort instead.
func (aaa *ImageConfigService) DeleteImage(input *image_config.DeleteImageParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, unprocessableEntity, internalServerError, err := aaa.Client.ImageConfig.DeleteImage(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use ExportImagesShort instead.
func (aaa *ImageConfigService) ExportImages(input *image_config.ExportImagesParams) ([]*dsmcclientmodels.ModelsImageRecord, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.ImageConfig.ExportImages(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
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

// Deprecated: 2022-01-10 - please use GetImageLimitShort instead.
func (aaa *ImageConfigService) GetImageLimit(input *image_config.GetImageLimitParams) (*dsmcclientmodels.ModelsGetImageLimitResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := aaa.Client.ImageConfig.GetImageLimit(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteImagePatchShort instead.
func (aaa *ImageConfigService) DeleteImagePatch(input *image_config.DeleteImagePatchParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, unprocessableEntity, internalServerError, err := aaa.Client.ImageConfig.DeleteImagePatch(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use GetImageDetailShort instead.
func (aaa *ImageConfigService) GetImageDetail(input *image_config.GetImageDetailParams) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.ImageConfig.GetImageDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetImagePatchesShort instead.
func (aaa *ImageConfigService) GetImagePatches(input *image_config.GetImagePatchesParams) (*dsmcclientmodels.ModelsListImagePatchesResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.ImageConfig.GetImagePatches(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetImagePatchDetailShort instead.
func (aaa *ImageConfigService) GetImagePatchDetail(input *image_config.GetImagePatchDetailParams) (*dsmcclientmodels.ModelsGetImagePatchDetailResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.ImageConfig.GetImagePatchDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetRepositoryShort instead.
func (aaa *ImageConfigService) GetRepository(input *image_config.GetRepositoryParams) (*dsmcclientmodels.ModelsRepositoryRecord, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.ImageConfig.GetRepository(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use CreateRepositoryShort instead.
func (aaa *ImageConfigService) CreateRepository(input *image_config.CreateRepositoryParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := aaa.Client.ImageConfig.CreateRepository(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: 2022-01-10 - please use ListImagesClientShort instead.
func (aaa *ImageConfigService) ListImagesClient(input *image_config.ListImagesClientParams) (*dsmcclientmodels.ModelsListImageResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := aaa.Client.ImageConfig.ListImagesClient(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use ImageLimitClientShort instead.
func (aaa *ImageConfigService) ImageLimitClient(input *image_config.ImageLimitClientParams) (*dsmcclientmodels.ModelsGetImageLimitResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := aaa.Client.ImageConfig.ImageLimitClient(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use ImageDetailClientShort instead.
func (aaa *ImageConfigService) ImageDetailClient(input *image_config.ImageDetailClientParams) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.ImageConfig.ImageDetailClient(input, client.BearerToken(*token.AccessToken))
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

func (aaa *ImageConfigService) UpdateImageShort(input *image_config.UpdateImageParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.ImageConfig.UpdateImageShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ImageConfigService) CreateImageShort(input *image_config.CreateImageParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.ImageConfig.CreateImageShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ImageConfigService) ImportImagesShort(input *image_config.ImportImagesParams) (*dsmcclientmodels.ModelsImportResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.ImportImagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) CreateImagePatchShort(input *image_config.CreateImagePatchParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.ImageConfig.CreateImagePatchShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ImageConfigService) ListImagesShort(input *image_config.ListImagesParams) (*dsmcclientmodels.ModelsListImageResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.ListImagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) DeleteImageShort(input *image_config.DeleteImageParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.ImageConfig.DeleteImageShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ImageConfigService) ExportImagesShort(input *image_config.ExportImagesParams) ([]*dsmcclientmodels.ModelsImageRecord, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.ExportImagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) GetImageLimitShort(input *image_config.GetImageLimitParams) (*dsmcclientmodels.ModelsGetImageLimitResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.GetImageLimitShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) DeleteImagePatchShort(input *image_config.DeleteImagePatchParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.ImageConfig.DeleteImagePatchShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ImageConfigService) GetImageDetailShort(input *image_config.GetImageDetailParams) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.GetImageDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) GetImagePatchesShort(input *image_config.GetImagePatchesParams) (*dsmcclientmodels.ModelsListImagePatchesResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.GetImagePatchesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) GetImagePatchDetailShort(input *image_config.GetImagePatchDetailParams) (*dsmcclientmodels.ModelsGetImagePatchDetailResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.GetImagePatchDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) GetRepositoryShort(input *image_config.GetRepositoryParams) (*dsmcclientmodels.ModelsRepositoryRecord, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.GetRepositoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) CreateRepositoryShort(input *image_config.CreateRepositoryParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.ImageConfig.CreateRepositoryShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ImageConfigService) ListImagesClientShort(input *image_config.ListImagesClientParams) (*dsmcclientmodels.ModelsListImageResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.ListImagesClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) ImageLimitClientShort(input *image_config.ImageLimitClientParams) (*dsmcclientmodels.ModelsGetImageLimitResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.ImageLimitClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ImageConfigService) ImageDetailClientShort(input *image_config.ImageDetailClientParams) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.ImageConfig.ImageDetailClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

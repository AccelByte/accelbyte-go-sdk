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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ImageConfigService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use UpdateImageShort instead
func (i *ImageConfigService) UpdateImage(input *image_config.UpdateImageParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := i.Client.ImageConfig.UpdateImage(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateImageShort instead
func (i *ImageConfigService) CreateImage(input *image_config.CreateImageParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, conflict, internalServerError, err := i.Client.ImageConfig.CreateImage(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ImportImagesShort instead
func (i *ImageConfigService) ImportImages(input *image_config.ImportImagesParams) (*dsmcclientmodels.ModelsImportResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := i.Client.ImageConfig.ImportImages(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateImagePatchShort instead
func (i *ImageConfigService) CreateImagePatch(input *image_config.CreateImagePatchParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, conflict, internalServerError, err := i.Client.ImageConfig.CreateImagePatch(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ListImagesShort instead
func (i *ImageConfigService) ListImages(input *image_config.ListImagesParams) (*dsmcclientmodels.ModelsListImageResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := i.Client.ImageConfig.ListImages(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteImageShort instead
func (i *ImageConfigService) DeleteImage(input *image_config.DeleteImageParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, unprocessableEntity, internalServerError, err := i.Client.ImageConfig.DeleteImage(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ExportImagesShort instead
func (i *ImageConfigService) ExportImages(input *image_config.ExportImagesParams) ([]*dsmcclientmodels.ModelsImageRecord, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := i.Client.ImageConfig.ExportImages(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetImageLimitShort instead
func (i *ImageConfigService) GetImageLimit(input *image_config.GetImageLimitParams) (*dsmcclientmodels.ModelsGetImageLimitResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := i.Client.ImageConfig.GetImageLimit(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteImagePatchShort instead
func (i *ImageConfigService) DeleteImagePatch(input *image_config.DeleteImagePatchParams) error {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, unprocessableEntity, internalServerError, err := i.Client.ImageConfig.DeleteImagePatch(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetImageDetailShort instead
func (i *ImageConfigService) GetImageDetail(input *image_config.GetImageDetailParams) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := i.Client.ImageConfig.GetImageDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetImagePatchesShort instead
func (i *ImageConfigService) GetImagePatches(input *image_config.GetImagePatchesParams) (*dsmcclientmodels.ModelsListImagePatchesResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := i.Client.ImageConfig.GetImagePatches(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetImagePatchDetailShort instead
func (i *ImageConfigService) GetImagePatchDetail(input *image_config.GetImagePatchDetailParams) (*dsmcclientmodels.ModelsGetImagePatchDetailResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := i.Client.ImageConfig.GetImagePatchDetail(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ImageDetailClientShort instead
func (i *ImageConfigService) ImageDetailClient(input *image_config.ImageDetailClientParams) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	token, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := i.Client.ImageConfig.ImageDetailClient(input, client.BearerToken(*token.AccessToken))
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

func (i *ImageConfigService) UpdateImageShort(input *image_config.UpdateImageParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.ImageConfig.UpdateImageShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *ImageConfigService) CreateImageShort(input *image_config.CreateImageParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.ImageConfig.CreateImageShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *ImageConfigService) ImportImagesShort(input *image_config.ImportImagesParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsImportResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.ImageConfig.ImportImagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ImageConfigService) CreateImagePatchShort(input *image_config.CreateImagePatchParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.ImageConfig.CreateImagePatchShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *ImageConfigService) ListImagesShort(input *image_config.ListImagesParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListImageResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.ImageConfig.ListImagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ImageConfigService) DeleteImageShort(input *image_config.DeleteImageParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.ImageConfig.DeleteImageShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *ImageConfigService) ExportImagesShort(input *image_config.ExportImagesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*dsmcclientmodels.ModelsImageRecord, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.ImageConfig.ExportImagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ImageConfigService) GetImageLimitShort(input *image_config.GetImageLimitParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsGetImageLimitResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.ImageConfig.GetImageLimitShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ImageConfigService) DeleteImagePatchShort(input *image_config.DeleteImagePatchParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	_, err := i.Client.ImageConfig.DeleteImagePatchShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (i *ImageConfigService) GetImageDetailShort(input *image_config.GetImageDetailParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.ImageConfig.GetImageDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ImageConfigService) GetImagePatchesShort(input *image_config.GetImagePatchesParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListImagePatchesResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.ImageConfig.GetImagePatchesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ImageConfigService) GetImagePatchDetailShort(input *image_config.GetImagePatchDetailParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsGetImagePatchDetailResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.ImageConfig.GetImagePatchDetailShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (i *ImageConfigService) ImageDetailClientShort(input *image_config.ImageDetailClientParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(i.TokenRepository, nil, security, "")
	}
	ok, err := i.Client.ImageConfig.ImageDetailClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

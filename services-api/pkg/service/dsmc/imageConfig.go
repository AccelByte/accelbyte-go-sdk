// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type ImageConfigService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use UpdateImageShort instead
func (i *ImageConfigService) UpdateImage(input *image_config.UpdateImageParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, internalServerError, err := i.Client.ImageConfig.UpdateImage(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, conflict, internalServerError, err := i.Client.ImageConfig.CreateImage(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := i.Client.ImageConfig.ImportImages(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, conflict, internalServerError, err := i.Client.ImageConfig.CreateImagePatch(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := i.Client.ImageConfig.ListImages(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, unprocessableEntity, internalServerError, err := i.Client.ImageConfig.DeleteImage(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, internalServerError, err := i.Client.ImageConfig.ExportImages(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := i.Client.ImageConfig.GetImageLimit(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, unprocessableEntity, internalServerError, err := i.Client.ImageConfig.DeleteImagePatch(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := i.Client.ImageConfig.GetImageDetail(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := i.Client.ImageConfig.GetImagePatches(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := i.Client.ImageConfig.GetImagePatchDetail(input, client.BearerToken(*accessToken.AccessToken))
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
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := i.Client.ImageConfig.ImageDetailClient(input, client.BearerToken(*accessToken.AccessToken))
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

func (i *ImageConfigService) UpdateImageShort(input *image_config.UpdateImageParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.ImageConfig.UpdateImageShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (i *ImageConfigService) CreateImageShort(input *image_config.CreateImageParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.ImageConfig.CreateImageShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (i *ImageConfigService) ImportImagesShort(input *image_config.ImportImagesParams) (*dsmcclientmodels.ModelsImportResponse, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.ImageConfig.ImportImagesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *ImageConfigService) CreateImagePatchShort(input *image_config.CreateImagePatchParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.ImageConfig.CreateImagePatchShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (i *ImageConfigService) ListImagesShort(input *image_config.ListImagesParams) (*dsmcclientmodels.ModelsListImageResponse, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.ImageConfig.ListImagesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *ImageConfigService) DeleteImageShort(input *image_config.DeleteImageParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.ImageConfig.DeleteImageShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (i *ImageConfigService) ExportImagesShort(input *image_config.ExportImagesParams) ([]*dsmcclientmodels.ModelsImageRecord, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.ImageConfig.ExportImagesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *ImageConfigService) GetImageLimitShort(input *image_config.GetImageLimitParams) (*dsmcclientmodels.ModelsGetImageLimitResponse, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.ImageConfig.GetImageLimitShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *ImageConfigService) DeleteImagePatchShort(input *image_config.DeleteImagePatchParams) error {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = i.Client.ImageConfig.DeleteImagePatchShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (i *ImageConfigService) GetImageDetailShort(input *image_config.GetImageDetailParams) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.ImageConfig.GetImageDetailShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *ImageConfigService) GetImagePatchesShort(input *image_config.GetImagePatchesParams) (*dsmcclientmodels.ModelsListImagePatchesResponse, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.ImageConfig.GetImagePatchesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *ImageConfigService) GetImagePatchDetailShort(input *image_config.GetImagePatchDetailParams) (*dsmcclientmodels.ModelsGetImagePatchDetailResponse, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.ImageConfig.GetImagePatchDetailShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (i *ImageConfigService) ImageDetailClientShort(input *image_config.ImageDetailClientParams) (*dsmcclientmodels.ModelsGetImageDetailResponse, error) {
	accessToken, err := i.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := i.Client.ImageConfig.ImageDetailClientShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/file_upload"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type FileUploadService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GeneratedUploadURLShort instead
func (f *FileUploadService) GeneratedUploadURL(input *file_upload.GeneratedUploadURLParams) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := f.Client.FileUpload.GeneratedUploadURL(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GeneratedUserUploadContentURLShort instead
func (f *FileUploadService) GeneratedUserUploadContentURL(input *file_upload.GeneratedUserUploadContentURLParams) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := f.Client.FileUpload.GeneratedUserUploadContentURL(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGeneratedUploadURLShort instead
func (f *FileUploadService) PublicGeneratedUploadURL(input *file_upload.PublicGeneratedUploadURLParams) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, internalServerError, err := f.Client.FileUpload.PublicGeneratedUploadURL(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PublicGeneratedUserUploadContentURLShort instead
func (f *FileUploadService) PublicGeneratedUserUploadContentURL(input *file_upload.PublicGeneratedUserUploadContentURLParams) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServerError, err := f.Client.FileUpload.PublicGeneratedUserUploadContentURL(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FileUploadService) GeneratedUploadURLShort(input *file_upload.GeneratedUploadURLParams) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := f.Client.FileUpload.GeneratedUploadURLShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FileUploadService) GeneratedUserUploadContentURLShort(input *file_upload.GeneratedUserUploadContentURLParams) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := f.Client.FileUpload.GeneratedUserUploadContentURLShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FileUploadService) PublicGeneratedUploadURLShort(input *file_upload.PublicGeneratedUploadURLParams) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := f.Client.FileUpload.PublicGeneratedUploadURLShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (f *FileUploadService) PublicGeneratedUserUploadContentURLShort(input *file_upload.PublicGeneratedUserUploadContentURLParams) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := f.Client.FileUpload.PublicGeneratedUserUploadContentURLShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

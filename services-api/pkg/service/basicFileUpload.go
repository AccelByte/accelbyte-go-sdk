// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/file_upload"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type BasicFileUploadService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (b *BasicFileUploadService) GeneratedUploadURL(namespace, folder, fileType string) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &file_upload.GeneratedUploadURLParams{
		FileType:  fileType,
		Folder:    folder,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.FileUpload.GeneratedUploadURL(param, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BasicFileUploadService) GeneratedUserUploadContentURL(namespace, userId, fileType string) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &file_upload.GeneratedUserUploadContentURLParams{
		FileType:  fileType,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServer, err :=
		b.Client.FileUpload.GeneratedUserUploadContentURL(param, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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

func (b *BasicFileUploadService) PublicGeneratedUploadURL(namespace, folder, fileType string) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &file_upload.PublicGeneratedUploadURLParams{
		FileType:  fileType,
		Namespace: namespace,
		Folder:    folder,
	}
	ok, badRequest, unauthorized, forbidden, internalServer, err :=
		b.Client.FileUpload.PublicGeneratedUploadURL(param, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
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

func (b *BasicFileUploadService) PublicGeneratedUserUploadContentURL(namespace, userId, fileType string) (*basicclientmodels.FileUploadURLInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &file_upload.PublicGeneratedUserUploadContentURLParams{
		FileType:  fileType,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, conflict, internalServer, err :=
		b.Client.FileUpload.PublicGeneratedUserUploadContentURL(param, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
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

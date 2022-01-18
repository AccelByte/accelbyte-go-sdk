// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package qosm

import (
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminService struct {
	Client          *qosmclient.JusticeQosmService
	TokenRepository repository.TokenRepository
}

func (a *AdminService) DeleteServer(input *admin.DeleteServerParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, internalServerError, err := a.Client.Admin.DeleteServer(input, client.BearerToken(*accessToken.AccessToken))
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminService) SetServerAlias(input *admin.SetServerAliasParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, internalServerError, err := a.Client.Admin.SetServerAlias(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
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

func (a *AdminService) DeleteServerShort(input *admin.DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Admin.DeleteServerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminService) SetServerAliasShort(input *admin.SetServerAliasParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Admin.SetServerAliasShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

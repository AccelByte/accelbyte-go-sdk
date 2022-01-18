// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListServerShort instead
func (a *AdminService) ListServer(input *admin.ListServerParams) (*dsmcclientmodels.ModelsListServerResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.ListServer(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use CountServerShort instead
func (a *AdminService) CountServer(input *admin.CountServerParams) (*dsmcclientmodels.ModelsCountServerResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.CountServer(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use CountServerDetailedShort instead
func (a *AdminService) CountServerDetailed(input *admin.CountServerDetailedParams) (*dsmcclientmodels.ModelsDetailedCountServerResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.CountServerDetailed(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use ListLocalServerShort instead
func (a *AdminService) ListLocalServer(input *admin.ListLocalServerParams) (*dsmcclientmodels.ModelsListServerResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.ListLocalServer(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteLocalServerShort instead
func (a *AdminService) DeleteLocalServer(input *admin.DeleteLocalServerParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := a.Client.Admin.DeleteLocalServer(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetServerShort instead
func (a *AdminService) GetServer(input *admin.GetServerParams) (*dsmcclientmodels.ModelsServer, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.Admin.GetServer(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteServerShort instead
func (a *AdminService) DeleteServer(input *admin.DeleteServerParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.Admin.DeleteServer(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetServerLogsShort instead
func (a *AdminService) GetServerLogs(input *admin.GetServerLogsParams) (*dsmcclientmodels.ModelsServerLogs, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Admin.GetServerLogs(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use ListSessionShort instead
func (a *AdminService) ListSession(input *admin.ListSessionParams) (*dsmcclientmodels.ModelsListSessionResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.ListSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use CountSessionShort instead
func (a *AdminService) CountSession(input *admin.CountSessionParams) (*dsmcclientmodels.ModelsCountSessionResponse, error) {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.CountSession(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use DeleteSessionShort instead
func (a *AdminService) DeleteSession(input *admin.DeleteSessionParams) error {
	accessToken, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := a.Client.Admin.DeleteSession(input, client.BearerToken(*accessToken.AccessToken))
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

func (a *AdminService) ListServerShort(input *admin.ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListServerResponse, error) {
	ok, err := a.Client.Admin.ListServerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminService) CountServerShort(input *admin.CountServerParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsCountServerResponse, error) {
	ok, err := a.Client.Admin.CountServerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminService) CountServerDetailedShort(input *admin.CountServerDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDetailedCountServerResponse, error) {
	ok, err := a.Client.Admin.CountServerDetailedShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminService) ListLocalServerShort(input *admin.ListLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListServerResponse, error) {
	ok, err := a.Client.Admin.ListLocalServerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminService) DeleteLocalServerShort(input *admin.DeleteLocalServerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Admin.DeleteLocalServerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminService) GetServerShort(input *admin.GetServerParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsServer, error) {
	ok, err := a.Client.Admin.GetServerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminService) DeleteServerShort(input *admin.DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Admin.DeleteServerShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (a *AdminService) GetServerLogsShort(input *admin.GetServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsServerLogs, error) {
	ok, err := a.Client.Admin.GetServerLogsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminService) ListSessionShort(input *admin.ListSessionParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListSessionResponse, error) {
	ok, err := a.Client.Admin.ListSessionShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminService) CountSessionShort(input *admin.CountSessionParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsCountSessionResponse, error) {
	ok, err := a.Client.Admin.CountSessionShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (a *AdminService) DeleteSessionShort(input *admin.DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := a.Client.Admin.DeleteSessionShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

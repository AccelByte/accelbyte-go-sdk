// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type AdminService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListServerShort instead
func (a *AdminService) ListServer(input *admin.ListServerParams) (*dsmcclientmodels.ModelsListServerResponse, error) {
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.ListServer(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.CountServer(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.CountServerDetailed(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.ListLocalServer(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := a.Client.Admin.DeleteLocalServer(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := a.Client.Admin.GetServer(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := a.Client.Admin.DeleteServer(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := a.Client.Admin.GetServerLogs(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.ListSession(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := a.Client.Admin.CountSession(input, client.BearerToken(*token.AccessToken))
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
	token, err := a.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, internalServerError, err := a.Client.Admin.DeleteSession(input, client.BearerToken(*token.AccessToken))
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

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) ListServerShort(input *admin.ListServerParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListServerResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Admin.ListServerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) CountServerShort(input *admin.CountServerParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsCountServerResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Admin.CountServerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) CountServerDetailedShort(input *admin.CountServerDetailedParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsDetailedCountServerResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Admin.CountServerDetailedShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) ListLocalServerShort(input *admin.ListLocalServerParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListServerResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Admin.ListLocalServerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) DeleteLocalServerShort(input *admin.DeleteLocalServerParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.Admin.DeleteLocalServerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) GetServerShort(input *admin.GetServerParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsServer, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Admin.GetServerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) DeleteServerShort(input *admin.DeleteServerParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.Admin.DeleteServerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) GetServerLogsShort(input *admin.GetServerLogsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsServerLogs, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Admin.GetServerLogsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) ListSessionShort(input *admin.ListSessionParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListSessionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Admin.ListSessionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) CountSessionShort(input *admin.CountSessionParams, authInfoWriter runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsCountSessionResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	ok, err := a.Client.Admin.CountSessionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:DSM:SESSION [DELETE]'], 'HasScope': ['social'], 'authorization': []}]
func (a *AdminService) DeleteSessionShort(input *admin.DeleteSessionParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(a.TokenRepository, nil, security, "")
	}
	_, err := a.Client.Admin.DeleteSessionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

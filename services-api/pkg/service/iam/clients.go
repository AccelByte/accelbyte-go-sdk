// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ClientsService struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetClientsShort instead
func (c *ClientsService) GetClients(input *clients.GetClientsParams) ([]*iamclientmodels.ClientmodelClientResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := c.Client.Clients.GetClients(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateClientShort instead
func (c *ClientsService) CreateClient(input *clients.CreateClientParams) (*iamclientmodels.ClientmodelClientCreationResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := c.Client.Clients.CreateClient(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetClientShort instead
func (c *ClientsService) GetClient(input *clients.GetClientParams) (*iamclientmodels.ClientmodelClientResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := c.Client.Clients.GetClient(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateClientShort instead
func (c *ClientsService) UpdateClient(input *clients.UpdateClientParams) (*iamclientmodels.ClientmodelClientResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.UpdateClient(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteClientShort instead
func (c *ClientsService) DeleteClient(input *clients.DeleteClientParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := c.Client.Clients.DeleteClient(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateClientPermissionShort instead
func (c *ClientsService) UpdateClientPermission(input *clients.UpdateClientPermissionParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.UpdateClientPermission(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AddClientPermissionShort instead
func (c *ClientsService) AddClientPermission(input *clients.AddClientPermissionParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.AddClientPermission(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use DeleteClientPermissionShort instead
func (c *ClientsService) DeleteClientPermission(input *clients.DeleteClientPermissionParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.DeleteClientPermission(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateClientSecretShort instead
func (c *ClientsService) UpdateClientSecret(input *clients.UpdateClientSecretParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.UpdateClientSecret(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetClientsbyNamespaceShort instead
func (c *ClientsService) GetClientsbyNamespace(input *clients.GetClientsbyNamespaceParams) ([]*iamclientmodels.ClientmodelClientResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := c.Client.Clients.GetClientsbyNamespace(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateClientByNamespaceShort instead
func (c *ClientsService) CreateClientByNamespace(input *clients.CreateClientByNamespaceParams) (*iamclientmodels.ClientmodelClientCreationResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := c.Client.Clients.CreateClientByNamespace(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use DeleteClientByNamespaceShort instead
func (c *ClientsService) DeleteClientByNamespace(input *clients.DeleteClientByNamespaceParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := c.Client.Clients.DeleteClientByNamespace(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminGetClientsByNamespaceV3Short instead
func (c *ClientsService) AdminGetClientsByNamespaceV3(input *clients.AdminGetClientsByNamespaceV3Params) (*iamclientmodels.ClientmodelClientsV3Response, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := c.Client.Clients.AdminGetClientsByNamespaceV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminCreateClientV3Short instead
func (c *ClientsService) AdminCreateClientV3(input *clients.AdminCreateClientV3Params) (*iamclientmodels.ClientmodelClientV3Response, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := c.Client.Clients.AdminCreateClientV3(input, client.BearerToken(*token.AccessToken))
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
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use AdminGetClientsbyNamespacebyIDV3Short instead
func (c *ClientsService) AdminGetClientsbyNamespacebyIDV3(input *clients.AdminGetClientsbyNamespacebyIDV3Params) (*iamclientmodels.ClientmodelClientV3Response, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.AdminGetClientsbyNamespacebyIDV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminDeleteClientV3Short instead
func (c *ClientsService) AdminDeleteClientV3(input *clients.AdminDeleteClientV3Params) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, conflict, err := c.Client.Clients.AdminDeleteClientV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminUpdateClientV3Short instead
func (c *ClientsService) AdminUpdateClientV3(input *clients.AdminUpdateClientV3Params) (*iamclientmodels.ClientmodelClientV3Response, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.AdminUpdateClientV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminUpdateClientPermissionV3Short instead
func (c *ClientsService) AdminUpdateClientPermissionV3(input *clients.AdminUpdateClientPermissionV3Params) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.AdminUpdateClientPermissionV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminAddClientPermissionsV3Short instead
func (c *ClientsService) AdminAddClientPermissionsV3(input *clients.AdminAddClientPermissionsV3Params) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.AdminAddClientPermissionsV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use AdminDeleteClientPermissionV3Short instead
func (c *ClientsService) AdminDeleteClientPermissionV3(input *clients.AdminDeleteClientPermissionV3Params) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.Clients.AdminDeleteClientPermissionV3(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['CLIENT [READ]'], 'authorization': []}]
func (c *ClientsService) GetClientsShort(input *clients.GetClientsParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*iamclientmodels.ClientmodelClientResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Clients.GetClientsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['CLIENT:ADMIN [CREATE]'], 'authorization': []}]
func (c *ClientsService) CreateClientShort(input *clients.CreateClientParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ClientmodelClientCreationResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	created, err := c.Client.Clients.CreateClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'HasPermission': ['CLIENT [READ]'], 'authorization': []}]
func (c *ClientsService) GetClientShort(input *clients.GetClientParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ClientmodelClientResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Clients.GetClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['CLIENT:ADMIN [UPDATE]'], 'authorization': []}]
func (c *ClientsService) UpdateClientShort(input *clients.UpdateClientParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ClientmodelClientResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Clients.UpdateClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['CLIENT:ADMIN [DELETE]'], 'authorization': []}]
func (c *ClientsService) DeleteClientShort(input *clients.DeleteClientParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.DeleteClientShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['CLIENT:ADMIN [UPDATE]'], 'authorization': []}]
func (c *ClientsService) UpdateClientPermissionShort(input *clients.UpdateClientPermissionParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.UpdateClientPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['CLIENT:ADMIN [UPDATE]'], 'authorization': []}]
func (c *ClientsService) AddClientPermissionShort(input *clients.AddClientPermissionParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.AddClientPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['CLIENT:ADMIN [UPDATE]'], 'authorization': []}]
func (c *ClientsService) DeleteClientPermissionShort(input *clients.DeleteClientPermissionParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.DeleteClientPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['CLIENT:ADMIN [UPDATE]'], 'authorization': []}]
func (c *ClientsService) UpdateClientSecretShort(input *clients.UpdateClientSecretParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.UpdateClientSecretShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['NAMESPACE:{namespace}:CLIENT [READ]'], 'authorization': []}]
func (c *ClientsService) GetClientsbyNamespaceShort(input *clients.GetClientsbyNamespaceParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*iamclientmodels.ClientmodelClientResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Clients.GetClientsbyNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]'], 'authorization': []}]
func (c *ClientsService) CreateClientByNamespaceShort(input *clients.CreateClientByNamespaceParams, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ClientmodelClientCreationResponse, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	created, err := c.Client.Clients.CreateClientByNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT:{clientId} [DELETE]'], 'authorization': []}]
func (c *ClientsService) DeleteClientByNamespaceShort(input *clients.DeleteClientByNamespaceParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.DeleteClientByNamespaceShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'], 'authorization': []}]
func (c *ClientsService) AdminGetClientsByNamespaceV3Short(input *clients.AdminGetClientsByNamespaceV3Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ClientmodelClientsV3Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Clients.AdminGetClientsByNamespaceV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]'], 'authorization': []}]
func (c *ClientsService) AdminCreateClientV3Short(input *clients.AdminCreateClientV3Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ClientmodelClientV3Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	created, err := c.Client.Clients.AdminCreateClientV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [READ]'], 'authorization': []}]
func (c *ClientsService) AdminGetClientsbyNamespacebyIDV3Short(input *clients.AdminGetClientsbyNamespacebyIDV3Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ClientmodelClientV3Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Clients.AdminGetClientsbyNamespacebyIDV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [DELETE]'], 'authorization': []}]
func (c *ClientsService) AdminDeleteClientV3Short(input *clients.AdminDeleteClientV3Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.AdminDeleteClientV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'], 'authorization': []}]
func (c *ClientsService) AdminUpdateClientV3Short(input *clients.AdminUpdateClientV3Params, authInfoWriter runtime.ClientAuthInfoWriter) (*iamclientmodels.ClientmodelClientV3Response, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Clients.AdminUpdateClientV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'], 'authorization': []}]
func (c *ClientsService) AdminUpdateClientPermissionV3Short(input *clients.AdminUpdateClientPermissionV3Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.AdminUpdateClientPermissionV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'], 'authorization': []}]
func (c *ClientsService) AdminAddClientPermissionsV3Short(input *clients.AdminAddClientPermissionsV3Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.AdminAddClientPermissionsV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'HasPermission': ['ADMIN:NAMESPACE:{namespace}:CLIENT [UPDATE]'], 'authorization': []}]
func (c *ClientsService) AdminDeleteClientPermissionV3Short(input *clients.AdminDeleteClientPermissionV3Params, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Clients.AdminDeleteClientPermissionV3Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ClientsDeprecatedService struct {
	Client                 *iamclient.JusticeIamService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (c *ClientsDeprecatedService) GetAuthSession() auth.Session {
	if c.RefreshTokenRepository != nil {
		return auth.Session{
			c.TokenRepository,
			c.ConfigRepository,
			c.RefreshTokenRepository,
		}
	}

	return auth.Session{
		c.TokenRepository,
		c.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use GetClientsShort instead
func (c *ClientsDeprecatedService) GetClients(input *clients_deprecated.GetClientsParams) ([]*iamclientmodels.ClientmodelClientResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := c.Client.ClientsDeprecated.GetClients(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) CreateClient(input *clients_deprecated.CreateClientParams) (*iamclientmodels.ClientmodelClientCreationResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := c.Client.ClientsDeprecated.CreateClient(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) GetClient(input *clients_deprecated.GetClientParams) (*iamclientmodels.ClientmodelClientResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := c.Client.ClientsDeprecated.GetClient(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) UpdateClient(input *clients_deprecated.UpdateClientParams) (*iamclientmodels.ClientmodelClientResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := c.Client.ClientsDeprecated.UpdateClient(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) DeleteClient(input *clients_deprecated.DeleteClientParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := c.Client.ClientsDeprecated.DeleteClient(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) UpdateClientPermission(input *clients_deprecated.UpdateClientPermissionParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.ClientsDeprecated.UpdateClientPermission(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) AddClientPermission(input *clients_deprecated.AddClientPermissionParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.ClientsDeprecated.AddClientPermission(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) DeleteClientPermission(input *clients_deprecated.DeleteClientPermissionParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.ClientsDeprecated.DeleteClientPermission(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) UpdateClientSecret(input *clients_deprecated.UpdateClientSecretParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := c.Client.ClientsDeprecated.UpdateClientSecret(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) GetClientsbyNamespace(input *clients_deprecated.GetClientsbyNamespaceParams) ([]*iamclientmodels.ClientmodelClientResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := c.Client.ClientsDeprecated.GetClientsbyNamespace(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) CreateClientByNamespace(input *clients_deprecated.CreateClientByNamespaceParams) (*iamclientmodels.ClientmodelClientCreationResponse, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := c.Client.ClientsDeprecated.CreateClientByNamespace(input, client.BearerToken(*token.AccessToken))
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
func (c *ClientsDeprecatedService) DeleteClientByNamespace(input *clients_deprecated.DeleteClientByNamespaceParams) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, forbidden, notFound, err := c.Client.ClientsDeprecated.DeleteClientByNamespace(input, client.BearerToken(*token.AccessToken))
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

func (c *ClientsDeprecatedService) GetClientsShort(input *clients_deprecated.GetClientsParams) ([]*iamclientmodels.ClientmodelClientResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := c.Client.ClientsDeprecated.GetClientsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ClientsDeprecatedService) CreateClientShort(input *clients_deprecated.CreateClientParams) (*iamclientmodels.ClientmodelClientCreationResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := c.Client.ClientsDeprecated.CreateClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (c *ClientsDeprecatedService) GetClientShort(input *clients_deprecated.GetClientParams) (*iamclientmodels.ClientmodelClientResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := c.Client.ClientsDeprecated.GetClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ClientsDeprecatedService) UpdateClientShort(input *clients_deprecated.UpdateClientParams) (*iamclientmodels.ClientmodelClientResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := c.Client.ClientsDeprecated.UpdateClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ClientsDeprecatedService) DeleteClientShort(input *clients_deprecated.DeleteClientParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.ClientsDeprecated.DeleteClientShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *ClientsDeprecatedService) UpdateClientPermissionShort(input *clients_deprecated.UpdateClientPermissionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.ClientsDeprecated.UpdateClientPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *ClientsDeprecatedService) AddClientPermissionShort(input *clients_deprecated.AddClientPermissionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.ClientsDeprecated.AddClientPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *ClientsDeprecatedService) DeleteClientPermissionShort(input *clients_deprecated.DeleteClientPermissionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.ClientsDeprecated.DeleteClientPermissionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *ClientsDeprecatedService) UpdateClientSecretShort(input *clients_deprecated.UpdateClientSecretParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.ClientsDeprecated.UpdateClientSecretShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *ClientsDeprecatedService) GetClientsbyNamespaceShort(input *clients_deprecated.GetClientsbyNamespaceParams) ([]*iamclientmodels.ClientmodelClientResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := c.Client.ClientsDeprecated.GetClientsbyNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ClientsDeprecatedService) CreateClientByNamespaceShort(input *clients_deprecated.CreateClientByNamespaceParams) (*iamclientmodels.ClientmodelClientCreationResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := c.Client.ClientsDeprecated.CreateClientByNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (c *ClientsDeprecatedService) DeleteClientByNamespaceShort(input *clients_deprecated.DeleteClientByNamespaceParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  c.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := c.Client.ClientsDeprecated.DeleteClientByNamespaceShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

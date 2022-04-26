// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type ConfigurationService struct {
	Client          *groupclient.JusticeGroupService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListGroupConfigurationAdminV1Short instead
func (c *ConfigurationService) ListGroupConfigurationAdminV1(input *configuration.ListGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsListConfigurationResponseV1, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.ListGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateGroupConfigurationAdminV1Short instead
func (c *ConfigurationService) CreateGroupConfigurationAdminV1(input *configuration.CreateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := c.Client.Configuration.CreateGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
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

	return created.GetPayload(), nil
}

// Deprecated: Use InitiateGroupConfigurationAdminV1Short instead
func (c *ConfigurationService) InitiateGroupConfigurationAdminV1(input *configuration.InitiateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, unauthorized, forbidden, conflict, internalServerError, err := c.Client.Configuration.InitiateGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
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

	return created.GetPayload(), nil
}

// Deprecated: Use GetGroupConfigurationAdminV1Short instead
func (c *ConfigurationService) GetGroupConfigurationAdminV1(input *configuration.GetGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsGetGroupConfigurationResponseV1, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.GetGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteGroupConfigurationV1Short instead
func (c *ConfigurationService) DeleteGroupConfigurationV1(input *configuration.DeleteGroupConfigurationV1Params) error {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.DeleteGroupConfigurationV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use UpdateGroupConfigurationAdminV1Short instead
func (c *ConfigurationService) UpdateGroupConfigurationAdminV1(input *configuration.UpdateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.UpdateGroupConfigurationAdminV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateGroupConfigurationGlobalRuleAdminV1Short instead
func (c *ConfigurationService) UpdateGroupConfigurationGlobalRuleAdminV1(input *configuration.UpdateGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.UpdateGroupConfigurationGlobalRuleAdminV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteGroupConfigurationGlobalRuleAdminV1Short instead
func (c *ConfigurationService) DeleteGroupConfigurationGlobalRuleAdminV1(input *configuration.DeleteGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.DeleteGroupConfigurationGlobalRuleAdminV1(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigurationService) ListGroupConfigurationAdminV1Short(input *configuration.ListGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsListConfigurationResponseV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Configuration.ListGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigurationService) CreateGroupConfigurationAdminV1Short(input *configuration.CreateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	created, err := c.Client.Configuration.CreateGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (c *ConfigurationService) InitiateGroupConfigurationAdminV1Short(input *configuration.InitiateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	created, err := c.Client.Configuration.InitiateGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (c *ConfigurationService) GetGroupConfigurationAdminV1Short(input *configuration.GetGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsGetGroupConfigurationResponseV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Configuration.GetGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigurationService) DeleteGroupConfigurationV1Short(input *configuration.DeleteGroupConfigurationV1Params) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	_, err := c.Client.Configuration.DeleteGroupConfigurationV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (c *ConfigurationService) UpdateGroupConfigurationAdminV1Short(input *configuration.UpdateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Configuration.UpdateGroupConfigurationAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigurationService) UpdateGroupConfigurationGlobalRuleAdminV1Short(input *configuration.UpdateGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Configuration.UpdateGroupConfigurationGlobalRuleAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *ConfigurationService) DeleteGroupConfigurationGlobalRuleAdminV1Short(input *configuration.DeleteGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Configuration.DeleteGroupConfigurationGlobalRuleAdminV1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

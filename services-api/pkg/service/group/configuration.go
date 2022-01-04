// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package group

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type ConfigurationService struct {
	Client          *groupclient.JusticeGroupService
	TokenRepository repository.TokenRepository
}

func (c *ConfigurationService) ListGroupConfigurationAdminV1(input *configuration.ListGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsListConfigurationResponseV1, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.ListGroupConfigurationAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigurationService) CreateGroupConfigurationAdminV1(input *configuration.CreateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, internalServerError, err := c.Client.Configuration.CreateGroupConfigurationAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigurationService) InitiateGroupConfigurationAdminV1(input *configuration.InitiateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, unauthorized, forbidden, conflict, internalServerError, err := c.Client.Configuration.InitiateGroupConfigurationAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigurationService) GetGroupConfigurationAdminV1(input *configuration.GetGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsGetGroupConfigurationResponseV1, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.GetGroupConfigurationAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigurationService) DeleteGroupConfigurationV1(input *configuration.DeleteGroupConfigurationV1Params) error {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.DeleteGroupConfigurationV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigurationService) UpdateGroupConfigurationAdminV1(input *configuration.UpdateGroupConfigurationAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.UpdateGroupConfigurationAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigurationService) UpdateGroupConfigurationGlobalRuleAdminV1(input *configuration.UpdateGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.UpdateGroupConfigurationGlobalRuleAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigurationService) DeleteGroupConfigurationGlobalRuleAdminV1(input *configuration.DeleteGroupConfigurationGlobalRuleAdminV1Params) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	accessToken, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := c.Client.Configuration.DeleteGroupConfigurationGlobalRuleAdminV1(input, client.BearerToken(*accessToken.AccessToken))
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

func (c *ConfigurationService) ListGroupConfigurationAdminV1Short(input *configuration.ListGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsListConfigurationResponseV1, error) {
	ok, err := c.Client.Configuration.ListGroupConfigurationAdminV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigurationService) CreateGroupConfigurationAdminV1Short(input *configuration.CreateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	created, err := c.Client.Configuration.CreateGroupConfigurationAdminV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (c *ConfigurationService) InitiateGroupConfigurationAdminV1Short(input *configuration.InitiateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsCreateGroupConfigurationResponseV1, error) {
	created, err := c.Client.Configuration.InitiateGroupConfigurationAdminV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (c *ConfigurationService) GetGroupConfigurationAdminV1Short(input *configuration.GetGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsGetGroupConfigurationResponseV1, error) {
	ok, err := c.Client.Configuration.GetGroupConfigurationAdminV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigurationService) DeleteGroupConfigurationV1Short(input *configuration.DeleteGroupConfigurationV1Params, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := c.Client.Configuration.DeleteGroupConfigurationV1Short(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (c *ConfigurationService) UpdateGroupConfigurationAdminV1Short(input *configuration.UpdateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	ok, err := c.Client.Configuration.UpdateGroupConfigurationAdminV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigurationService) UpdateGroupConfigurationGlobalRuleAdminV1Short(input *configuration.UpdateGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	ok, err := c.Client.Configuration.UpdateGroupConfigurationGlobalRuleAdminV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *ConfigurationService) DeleteGroupConfigurationGlobalRuleAdminV1Short(input *configuration.DeleteGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, error) {
	ok, err := c.Client.Configuration.DeleteGroupConfigurationGlobalRuleAdminV1Short(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

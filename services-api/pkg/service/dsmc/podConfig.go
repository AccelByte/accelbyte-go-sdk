// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dsmc

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/pod_config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PodConfigService struct {
	Client          *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetAllPodConfigShort instead
func (p *PodConfigService) GetAllPodConfig(input *pod_config.GetAllPodConfigParams) (*dsmcclientmodels.ModelsListPodConfigResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := p.Client.PodConfig.GetAllPodConfig(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetPodConfigShort instead
func (p *PodConfigService) GetPodConfig(input *pod_config.GetPodConfigParams) (*dsmcclientmodels.ModelsPodConfigRecord, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := p.Client.PodConfig.GetPodConfig(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use CreatePodConfigShort instead
func (p *PodConfigService) CreatePodConfig(input *pod_config.CreatePodConfigParams) (*dsmcclientmodels.ModelsPodConfigRecord, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, conflict, internalServerError, err := p.Client.PodConfig.CreatePodConfig(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: Use DeletePodConfigShort instead
func (p *PodConfigService) DeletePodConfig(input *pod_config.DeletePodConfigParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, conflict, internalServerError, err := p.Client.PodConfig.DeletePodConfig(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if notFound != nil {
		return notFound
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

// Deprecated: Use UpdatePodConfigShort instead
func (p *PodConfigService) UpdatePodConfig(input *pod_config.UpdatePodConfigParams) (*dsmcclientmodels.ModelsPodConfigRecord, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := p.Client.PodConfig.UpdatePodConfig(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
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

func (p *PodConfigService) GetAllPodConfigShort(input *pod_config.GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsListPodConfigResponse, error) {
	ok, err := p.Client.PodConfig.GetAllPodConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PodConfigService) GetPodConfigShort(input *pod_config.GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsPodConfigRecord, error) {
	ok, err := p.Client.PodConfig.GetPodConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PodConfigService) CreatePodConfigShort(input *pod_config.CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsPodConfigRecord, error) {
	created, err := p.Client.PodConfig.CreatePodConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (p *PodConfigService) DeletePodConfigShort(input *pod_config.DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.PodConfig.DeletePodConfigShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PodConfigService) UpdatePodConfigShort(input *pod_config.UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*dsmcclientmodels.ModelsPodConfigRecord, error) {
	ok, err := p.Client.PodConfig.UpdatePodConfigShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

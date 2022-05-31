// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package qosm

import (
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type PublicService struct {
	Client          *qosmclient.JusticeQosmService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListServerPerNamespaceShort instead
func (p *PublicService) ListServerPerNamespace(input *public.ListServerPerNamespaceParams) (*qosmclientmodels.ModelsListServerResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := p.Client.Public.ListServerPerNamespace(input, client.BearerToken(*token.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ListServerShort instead
func (p *PublicService) ListServer(input *public.ListServerParams) (*qosmclientmodels.ModelsListServerResponse, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := p.Client.Public.ListServer(input, client.BearerToken(*token.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicService) ListServerPerNamespaceShort(input *public.ListServerPerNamespaceParams) (*qosmclientmodels.ModelsListServerResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  p.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := p.Client.Public.ListServerPerNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PublicService) ListServerShort(input *public.ListServerParams) (*qosmclientmodels.ModelsListServerResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  p.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := p.Client.Public.ListServerShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package qosm

import (
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PublicService struct {
	Client          *qosmclient.JusticeQosmService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use ListServerShort instead
func (p *PublicService) ListServer(input *public.ListServerParams) (*qosmclientmodels.ModelsListServerResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := p.Client.Public.ListServer(input, client.BearerToken(*accessToken.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PublicService) ListServerShort(input *public.ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*qosmclientmodels.ModelsListServerResponse, error) {
	ok, err := p.Client.Public.ListServerShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

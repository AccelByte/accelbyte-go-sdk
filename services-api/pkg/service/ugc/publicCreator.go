// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_creator"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
)

type PublicCreatorService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetCreatorShort instead
func (p *PublicCreatorService) GetCreator(input *public_creator.GetCreatorParams) (*ugcclientmodels.ModelsCreatorOverviewResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := p.Client.PublicCreator.GetCreator(input, client.BearerToken(*accessToken.AccessToken))
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

func (p *PublicCreatorService) GetCreatorShort(input *public_creator.GetCreatorParams) (*ugcclientmodels.ModelsCreatorOverviewResponse, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.PublicCreator.GetCreatorShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

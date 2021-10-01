package service

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type DSMCPublic struct {
	DSMCClient      *dsmcclient.JusticeDsmcService
	TokenRepository repository.TokenRepository
}

func (g *DSMCPublic) GetDefaultProvider() (*dsmcclientmodels.ModelsDefaultProvider, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &public.GetDefaultProviderParams{}
	ok, err := g.DSMCClient.Public.GetDefaultProvider(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (g *DSMCPublic) ListProviders() ([]string, error) {
	token, err := g.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &public.ListProvidersParams{}
	ok, err := g.DSMCClient.Public.ListProviders(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

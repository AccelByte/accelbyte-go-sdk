// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package seasonpass

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type PassService struct {
	Client          *seasonpassclient.JusticeSeasonpassService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryPassesShort instead
func (p *PassService) QueryPasses(input *pass.QueryPassesParams) ([]*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := p.Client.Pass.QueryPasses(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreatePassShort instead
func (p *PassService) CreatePass(input *pass.CreatePassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, err := p.Client.Pass.CreatePass(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetPassShort instead
func (p *PassService) GetPass(input *pass.GetPassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := p.Client.Pass.GetPass(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeletePassShort instead
func (p *PassService) DeletePass(input *pass.DeletePassParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := p.Client.Pass.DeletePass(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
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

// Deprecated: Use UpdatePassShort instead
func (p *PassService) UpdatePass(input *pass.UpdatePassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := p.Client.Pass.UpdatePass(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GrantUserPassShort instead
func (p *PassService) GrantUserPass(input *pass.GrantUserPassParams) (*seasonpassclientmodels.UserSeasonSummary, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := p.Client.Pass.GrantUserPass(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PassService) QueryPassesShort(input *pass.QueryPassesParams) ([]*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Pass.QueryPassesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PassService) CreatePassShort(input *pass.CreatePassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := p.Client.Pass.CreatePassShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (p *PassService) GetPassShort(input *pass.GetPassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Pass.GetPassShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PassService) DeletePassShort(input *pass.DeletePassParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = p.Client.Pass.DeletePassShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (p *PassService) UpdatePassShort(input *pass.UpdatePassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Pass.UpdatePassShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PassService) GrantUserPassShort(input *pass.GrantUserPassParams) (*seasonpassclientmodels.UserSeasonSummary, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := p.Client.Pass.GrantUserPassShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

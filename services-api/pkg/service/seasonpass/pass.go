// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package seasonpass

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PassService struct {
	Client          *seasonpassclient.JusticeSeasonpassService
	TokenRepository repository.TokenRepository
}

func (p *PassService) GetPass(input *pass.GetPassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, badRequest, err := p.Client.Pass.GetPass(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PassService) DeletePass(input *pass.DeletePassParams) error {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, badRequest, err := p.Client.Pass.DeletePass(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}
	return nil
}

func (p *PassService) UpdatePass(input *pass.UpdatePassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, badRequest, conflict, unprocessableEntity, err := p.Client.Pass.UpdatePass(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if badRequest != nil {
		return nil, badRequest
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

func (p *PassService) CreatePass(input *pass.CreatePassParams) (*seasonpassclientmodels.PassInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, notFound, badRequest, conflict, unprocessableEntity, err := p.Client.Pass.CreatePass(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if badRequest != nil {
		return nil, badRequest
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

func (p *PassService) GetPassShort(input *pass.GetPassParams, authInfo runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.PassInfo, error) {
	ok, err := p.Client.Pass.GetPassShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PassService) DeletePassShort(input *pass.DeletePassParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := p.Client.Pass.DeletePassShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (p *PassService) UpdatePassShort(input *pass.UpdatePassParams, authInfo runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.PassInfo, error) {
	ok, err := p.Client.Pass.UpdatePassShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PassService) QueryPassesShort(input *pass.QueryPassesParams, authInfo runtime.ClientAuthInfoWriter) ([]*seasonpassclientmodels.PassInfo, error) {
	ok, err := p.Client.Pass.QueryPassesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PassService) CreatePassShort(input *pass.CreatePassParams, authInfo runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.PassInfo, error) {
	created, err := p.Client.Pass.CreatePassShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (p *PassService) GrantUserPassShort(input *pass.GrantUserPassParams, authInfo runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.UserSeasonSummary, error) {
	ok, err := p.Client.Pass.GrantUserPassShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

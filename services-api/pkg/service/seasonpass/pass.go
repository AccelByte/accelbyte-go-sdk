// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package seasonpass

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type PassService struct {
	Client          *seasonpassclient.JusticeSeasonpassService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryPassesShort instead
func (p *PassService) QueryPasses(input *pass.QueryPassesParams) ([]*seasonpassclientmodels.PassInfo, error) {
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := p.Client.Pass.QueryPasses(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, err := p.Client.Pass.CreatePass(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := p.Client.Pass.GetPass(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := p.Client.Pass.DeletePass(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := p.Client.Pass.UpdatePass(input, client.BearerToken(*token.AccessToken))
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
	token, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := p.Client.Pass.GrantUserPass(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:SEASONPASS [READ]'], 'authorization': []}]
func (p *PassService) QueryPassesShort(input *pass.QueryPassesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*seasonpassclientmodels.PassInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Pass.QueryPassesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:SEASONPASS [CREATE]'], 'authorization': []}]
func (p *PassService) CreatePassShort(input *pass.CreatePassParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.PassInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	created, err := p.Client.Pass.CreatePassShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:SEASONPASS [READ]'], 'authorization': []}]
func (p *PassService) GetPassShort(input *pass.GetPassParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.PassInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Pass.GetPassShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:SEASONPASS [DELETE]'], 'authorization': []}]
func (p *PassService) DeletePassShort(input *pass.DeletePassParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	_, err := p.Client.Pass.DeletePassShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:SEASONPASS [UPDATE]'], 'authorization': []}]
func (p *PassService) UpdatePassShort(input *pass.UpdatePassParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.PassInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Pass.UpdatePassShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// [{'authorization': []}, {'HasPermission': ['ADMIN:NAMESPACE:{namespace}:USER:{userId}:SEASONPASS [UPDATE]'], 'authorization': []}]
func (p *PassService) GrantUserPassShort(input *pass.GrantUserPassParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.UserSeasonSummary, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(p.TokenRepository, nil, security, "")
	}
	ok, err := p.Client.Pass.GrantUserPassShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

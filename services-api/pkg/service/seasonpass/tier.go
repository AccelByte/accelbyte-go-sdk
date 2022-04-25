// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package seasonpass

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/tier"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type TierService struct {
	Client          *seasonpassclient.JusticeSeasonpassService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryTiersShort instead
func (t *TierService) QueryTiers(input *tier.QueryTiersParams) (*seasonpassclientmodels.TierPagingSlicedResult, error) {
	token, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := t.Client.Tier.QueryTiers(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use CreateTierShort instead
func (t *TierService) CreateTier(input *tier.CreateTierParams) ([]*seasonpassclientmodels.Tier, error) {
	token, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, err := t.Client.Tier.CreateTier(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateTierShort instead
func (t *TierService) UpdateTier(input *tier.UpdateTierParams) (*seasonpassclientmodels.Tier, error) {
	token, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := t.Client.Tier.UpdateTier(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteTierShort instead
func (t *TierService) DeleteTier(input *tier.DeleteTierParams) error {
	token, err := t.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, conflict, err := t.Client.Tier.DeleteTier(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ReorderTierShort instead
func (t *TierService) ReorderTier(input *tier.ReorderTierParams) (*seasonpassclientmodels.Tier, error) {
	token, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := t.Client.Tier.ReorderTier(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GrantUserExpShort instead
func (t *TierService) GrantUserExp(input *tier.GrantUserExpParams) (*seasonpassclientmodels.UserSeasonSummary, error) {
	token, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := t.Client.Tier.GrantUserExp(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GrantUserTierShort instead
func (t *TierService) GrantUserTier(input *tier.GrantUserTierParams) (*seasonpassclientmodels.UserSeasonSummary, error) {
	token, err := t.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := t.Client.Tier.GrantUserTier(input, client.BearerToken(*token.AccessToken))
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

func (t *TierService) QueryTiersShort(input *tier.QueryTiersParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.TierPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(t.TokenRepository, nil, security, "")
	}
	ok, err := t.Client.Tier.QueryTiersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *TierService) CreateTierShort(input *tier.CreateTierParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*seasonpassclientmodels.Tier, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(t.TokenRepository, nil, security, "")
	}
	created, err := t.Client.Tier.CreateTierShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (t *TierService) UpdateTierShort(input *tier.UpdateTierParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.Tier, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(t.TokenRepository, nil, security, "")
	}
	ok, err := t.Client.Tier.UpdateTierShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *TierService) DeleteTierShort(input *tier.DeleteTierParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(t.TokenRepository, nil, security, "")
	}
	_, err := t.Client.Tier.DeleteTierShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (t *TierService) ReorderTierShort(input *tier.ReorderTierParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.Tier, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(t.TokenRepository, nil, security, "")
	}
	ok, err := t.Client.Tier.ReorderTierShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *TierService) GrantUserExpShort(input *tier.GrantUserExpParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.UserSeasonSummary, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(t.TokenRepository, nil, security, "")
	}
	ok, err := t.Client.Tier.GrantUserExpShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (t *TierService) GrantUserTierShort(input *tier.GrantUserTierParams, authInfoWriter runtime.ClientAuthInfoWriter) (*seasonpassclientmodels.UserSeasonSummary, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(t.TokenRepository, nil, security, "")
	}
	ok, err := t.Client.Tier.GrantUserTierShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

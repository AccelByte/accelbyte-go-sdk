// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type EntitlementService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *EntitlementService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use QueryEntitlementsShort instead
func (aaa *EntitlementService) QueryEntitlements(input *entitlement.QueryEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.QueryEntitlements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetEntitlementShort instead
func (aaa *EntitlementService) GetEntitlement(input *entitlement.GetEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.GetEntitlement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUserEntitlementsShort instead
func (aaa *EntitlementService) QueryUserEntitlements(input *entitlement.QueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.QueryUserEntitlements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GrantUserEntitlementShort instead
func (aaa *EntitlementService) GrantUserEntitlement(input *entitlement.GrantUserEntitlementParams) ([]*platformclientmodels.StackableEntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, notFound, unprocessableEntity, err := aaa.Client.Entitlement.GrantUserEntitlement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetUserAppEntitlementByAppIDShort instead
func (aaa *EntitlementService) GetUserAppEntitlementByAppID(input *entitlement.GetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.GetUserAppEntitlementByAppID(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUserEntitlementsByAppTypeShort instead
func (aaa *EntitlementService) QueryUserEntitlementsByAppType(input *entitlement.QueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.QueryUserEntitlementsByAppType(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementByItemIDShort instead
func (aaa *EntitlementService) GetUserEntitlementByItemID(input *entitlement.GetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.GetUserEntitlementByItemID(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserActiveEntitlementsByItemIdsShort instead
func (aaa *EntitlementService) GetUserActiveEntitlementsByItemIds(input *entitlement.GetUserActiveEntitlementsByItemIdsParams) ([]*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.GetUserActiveEntitlementsByItemIds(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementBySkuShort instead
func (aaa *EntitlementService) GetUserEntitlementBySku(input *entitlement.GetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.GetUserEntitlementBySku(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ExistsAnyUserActiveEntitlementShort instead
func (aaa *EntitlementService) ExistsAnyUserActiveEntitlement(input *entitlement.ExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.ExistsAnyUserActiveEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ExistsAnyUserActiveEntitlementByItemIdsShort instead
func (aaa *EntitlementService) ExistsAnyUserActiveEntitlementByItemIds(input *entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams) (*platformclientmodels.Ownership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.ExistsAnyUserActiveEntitlementByItemIds(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserAppEntitlementOwnershipByAppIDShort instead
func (aaa *EntitlementService) GetUserAppEntitlementOwnershipByAppID(input *entitlement.GetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.GetUserAppEntitlementOwnershipByAppID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementOwnershipByItemIDShort instead
func (aaa *EntitlementService) GetUserEntitlementOwnershipByItemID(input *entitlement.GetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.GetUserEntitlementOwnershipByItemID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementOwnershipByItemIdsShort instead
func (aaa *EntitlementService) GetUserEntitlementOwnershipByItemIds(input *entitlement.GetUserEntitlementOwnershipByItemIdsParams) ([]*platformclientmodels.EntitlementOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.GetUserEntitlementOwnershipByItemIds(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementOwnershipBySkuShort instead
func (aaa *EntitlementService) GetUserEntitlementOwnershipBySku(input *entitlement.GetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.GetUserEntitlementOwnershipBySku(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeUserEntitlementsShort instead
func (aaa *EntitlementService) RevokeUserEntitlements(input *entitlement.RevokeUserEntitlementsParams) (*platformclientmodels.BulkOperationResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.RevokeUserEntitlements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementShort instead
func (aaa *EntitlementService) GetUserEntitlement(input *entitlement.GetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.GetUserEntitlement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateUserEntitlementShort instead
func (aaa *EntitlementService) UpdateUserEntitlement(input *entitlement.UpdateUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := aaa.Client.Entitlement.UpdateUserEntitlement(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use ConsumeUserEntitlementShort instead
func (aaa *EntitlementService) ConsumeUserEntitlement(input *entitlement.ConsumeUserEntitlementParams) (*platformclientmodels.EntitlementDecrementResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := aaa.Client.Entitlement.ConsumeUserEntitlement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DisableUserEntitlementShort instead
func (aaa *EntitlementService) DisableUserEntitlement(input *entitlement.DisableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := aaa.Client.Entitlement.DisableUserEntitlement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use EnableUserEntitlementShort instead
func (aaa *EntitlementService) EnableUserEntitlement(input *entitlement.EnableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := aaa.Client.Entitlement.EnableUserEntitlement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementHistoriesShort instead
func (aaa *EntitlementService) GetUserEntitlementHistories(input *entitlement.GetUserEntitlementHistoriesParams) ([]*platformclientmodels.EntitlementHistoryInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.GetUserEntitlementHistories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeUserEntitlementShort instead
func (aaa *EntitlementService) RevokeUserEntitlement(input *entitlement.RevokeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.RevokeUserEntitlement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicExistsAnyMyActiveEntitlementShort instead
func (aaa *EntitlementService) PublicExistsAnyMyActiveEntitlement(input *entitlement.PublicExistsAnyMyActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicExistsAnyMyActiveEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyAppEntitlementOwnershipByAppIDShort instead
func (aaa *EntitlementService) PublicGetMyAppEntitlementOwnershipByAppID(input *entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicGetMyAppEntitlementOwnershipByAppID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyEntitlementOwnershipByItemIDShort instead
func (aaa *EntitlementService) PublicGetMyEntitlementOwnershipByItemID(input *entitlement.PublicGetMyEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicGetMyEntitlementOwnershipByItemID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyEntitlementOwnershipBySkuShort instead
func (aaa *EntitlementService) PublicGetMyEntitlementOwnershipBySku(input *entitlement.PublicGetMyEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicGetMyEntitlementOwnershipBySku(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetEntitlementOwnershipTokenShort instead
func (aaa *EntitlementService) PublicGetEntitlementOwnershipToken(input *entitlement.PublicGetEntitlementOwnershipTokenParams) (*platformclientmodels.OwnershipToken, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicGetEntitlementOwnershipToken(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryUserEntitlementsShort instead
func (aaa *EntitlementService) PublicQueryUserEntitlements(input *entitlement.PublicQueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicQueryUserEntitlements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserAppEntitlementByAppIDShort instead
func (aaa *EntitlementService) PublicGetUserAppEntitlementByAppID(input *entitlement.PublicGetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.PublicGetUserAppEntitlementByAppID(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryUserEntitlementsByAppTypeShort instead
func (aaa *EntitlementService) PublicQueryUserEntitlementsByAppType(input *entitlement.PublicQueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicQueryUserEntitlementsByAppType(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementByItemIDShort instead
func (aaa *EntitlementService) PublicGetUserEntitlementByItemID(input *entitlement.PublicGetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.PublicGetUserEntitlementByItemID(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementBySkuShort instead
func (aaa *EntitlementService) PublicGetUserEntitlementBySku(input *entitlement.PublicGetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.PublicGetUserEntitlementBySku(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicExistsAnyUserActiveEntitlementShort instead
func (aaa *EntitlementService) PublicExistsAnyUserActiveEntitlement(input *entitlement.PublicExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicExistsAnyUserActiveEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserAppEntitlementOwnershipByAppIDShort instead
func (aaa *EntitlementService) PublicGetUserAppEntitlementOwnershipByAppID(input *entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicGetUserAppEntitlementOwnershipByAppID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementOwnershipByItemIDShort instead
func (aaa *EntitlementService) PublicGetUserEntitlementOwnershipByItemID(input *entitlement.PublicGetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementOwnershipByItemIdsShort instead
func (aaa *EntitlementService) PublicGetUserEntitlementOwnershipByItemIds(input *entitlement.PublicGetUserEntitlementOwnershipByItemIdsParams) ([]*platformclientmodels.EntitlementOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemIds(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementOwnershipBySkuShort instead
func (aaa *EntitlementService) PublicGetUserEntitlementOwnershipBySku(input *entitlement.PublicGetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementOwnershipBySku(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementShort instead
func (aaa *EntitlementService) PublicGetUserEntitlement(input *entitlement.PublicGetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.Entitlement.PublicGetUserEntitlement(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicConsumeUserEntitlementShort instead
func (aaa *EntitlementService) PublicConsumeUserEntitlement(input *entitlement.PublicConsumeUserEntitlementParams) (*platformclientmodels.EntitlementDecrementResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := aaa.Client.Entitlement.PublicConsumeUserEntitlement(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) QueryEntitlementsShort(input *entitlement.QueryEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.QueryEntitlementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetEntitlementShort(input *entitlement.GetEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) QueryUserEntitlementsShort(input *entitlement.QueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.QueryUserEntitlementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GrantUserEntitlementShort(input *entitlement.GrantUserEntitlementParams) ([]*platformclientmodels.StackableEntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.Entitlement.GrantUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserAppEntitlementByAppIDShort(input *entitlement.GetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserAppEntitlementByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) QueryUserEntitlementsByAppTypeShort(input *entitlement.QueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.QueryUserEntitlementsByAppTypeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserEntitlementByItemIDShort(input *entitlement.GetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserEntitlementByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserActiveEntitlementsByItemIdsShort(input *entitlement.GetUserActiveEntitlementsByItemIdsParams) ([]*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserActiveEntitlementsByItemIdsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserEntitlementBySkuShort(input *entitlement.GetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserEntitlementBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) ExistsAnyUserActiveEntitlementShort(input *entitlement.ExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.ExistsAnyUserActiveEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) ExistsAnyUserActiveEntitlementByItemIdsShort(input *entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams) (*platformclientmodels.Ownership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.ExistsAnyUserActiveEntitlementByItemIdsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserAppEntitlementOwnershipByAppIDShort(input *entitlement.GetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserAppEntitlementOwnershipByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserEntitlementOwnershipByItemIDShort(input *entitlement.GetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserEntitlementOwnershipByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserEntitlementOwnershipByItemIdsShort(input *entitlement.GetUserEntitlementOwnershipByItemIdsParams) ([]*platformclientmodels.EntitlementOwnership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserEntitlementOwnershipByItemIdsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserEntitlementOwnershipBySkuShort(input *entitlement.GetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserEntitlementOwnershipBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) RevokeUserEntitlementsShort(input *entitlement.RevokeUserEntitlementsParams) (*platformclientmodels.BulkOperationResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.RevokeUserEntitlementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserEntitlementShort(input *entitlement.GetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) UpdateUserEntitlementShort(input *entitlement.UpdateUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.UpdateUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) ConsumeUserEntitlementShort(input *entitlement.ConsumeUserEntitlementParams) (*platformclientmodels.EntitlementDecrementResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.ConsumeUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) DisableUserEntitlementShort(input *entitlement.DisableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.DisableUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) EnableUserEntitlementShort(input *entitlement.EnableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.EnableUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) GetUserEntitlementHistoriesShort(input *entitlement.GetUserEntitlementHistoriesParams) ([]*platformclientmodels.EntitlementHistoryInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.GetUserEntitlementHistoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) RevokeUserEntitlementShort(input *entitlement.RevokeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.RevokeUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicExistsAnyMyActiveEntitlementShort(input *entitlement.PublicExistsAnyMyActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicExistsAnyMyActiveEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetMyAppEntitlementOwnershipByAppIDShort(input *entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetMyAppEntitlementOwnershipByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetMyEntitlementOwnershipByItemIDShort(input *entitlement.PublicGetMyEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetMyEntitlementOwnershipByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetMyEntitlementOwnershipBySkuShort(input *entitlement.PublicGetMyEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetMyEntitlementOwnershipBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetEntitlementOwnershipTokenShort(input *entitlement.PublicGetEntitlementOwnershipTokenParams) (*platformclientmodels.OwnershipToken, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetEntitlementOwnershipTokenShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicQueryUserEntitlementsShort(input *entitlement.PublicQueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicQueryUserEntitlementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetUserAppEntitlementByAppIDShort(input *entitlement.PublicGetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetUserAppEntitlementByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicQueryUserEntitlementsByAppTypeShort(input *entitlement.PublicQueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicQueryUserEntitlementsByAppTypeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetUserEntitlementByItemIDShort(input *entitlement.PublicGetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetUserEntitlementBySkuShort(input *entitlement.PublicGetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicExistsAnyUserActiveEntitlementShort(input *entitlement.PublicExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicExistsAnyUserActiveEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetUserAppEntitlementOwnershipByAppIDShort(input *entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetUserAppEntitlementOwnershipByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetUserEntitlementOwnershipByItemIDShort(input *entitlement.PublicGetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetUserEntitlementOwnershipByItemIdsShort(input *entitlement.PublicGetUserEntitlementOwnershipByItemIdsParams) ([]*platformclientmodels.EntitlementOwnership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemIdsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetUserEntitlementOwnershipBySkuShort(input *entitlement.PublicGetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementOwnershipBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicGetUserEntitlementShort(input *entitlement.PublicGetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicGetUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *EntitlementService) PublicConsumeUserEntitlementShort(input *entitlement.PublicConsumeUserEntitlementParams) (*platformclientmodels.EntitlementDecrementResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.Entitlement.PublicConsumeUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

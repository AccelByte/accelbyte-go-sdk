// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type EntitlementService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryEntitlementsShort instead
func (e *EntitlementService) QueryEntitlements(input *entitlement.QueryEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryEntitlements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetEntitlementShort instead
func (e *EntitlementService) GetEntitlement(input *entitlement.GetEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUserEntitlementsShort instead
func (e *EntitlementService) QueryUserEntitlements(input *entitlement.QueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryUserEntitlements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GrantUserEntitlementShort instead
func (e *EntitlementService) GrantUserEntitlement(input *entitlement.GrantUserEntitlementParams) ([]*platformclientmodels.StackableEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, notFound, unprocessableEntity, err := e.Client.Entitlement.GrantUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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
func (e *EntitlementService) GetUserAppEntitlementByAppID(input *entitlement.GetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserAppEntitlementByAppID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUserEntitlementsByAppTypeShort instead
func (e *EntitlementService) QueryUserEntitlementsByAppType(input *entitlement.QueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryUserEntitlementsByAppType(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementByItemIDShort instead
func (e *EntitlementService) GetUserEntitlementByItemID(input *entitlement.GetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserEntitlementByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementBySkuShort instead
func (e *EntitlementService) GetUserEntitlementBySku(input *entitlement.GetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserEntitlementBySku(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use ExistsAnyUserActiveEntitlementShort instead
func (e *EntitlementService) ExistsAnyUserActiveEntitlement(input *entitlement.ExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use ExistsAnyUserActiveEntitlementByItemIdsShort instead
func (e *EntitlementService) ExistsAnyUserActiveEntitlementByItemIds(input *entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlementByItemIds(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserAppEntitlementOwnershipByAppIDShort instead
func (e *EntitlementService) GetUserAppEntitlementOwnershipByAppID(input *entitlement.GetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserAppEntitlementOwnershipByAppID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementOwnershipByItemIDShort instead
func (e *EntitlementService) GetUserEntitlementOwnershipByItemID(input *entitlement.GetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementOwnershipBySkuShort instead
func (e *EntitlementService) GetUserEntitlementOwnershipBySku(input *entitlement.GetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipBySku(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeUserEntitlementsShort instead
func (e *EntitlementService) RevokeUserEntitlements(input *entitlement.RevokeUserEntitlementsParams) (*platformclientmodels.BulkOperationResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.RevokeUserEntitlements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementShort instead
func (e *EntitlementService) GetUserEntitlement(input *entitlement.GetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateUserEntitlementShort instead
func (e *EntitlementService) UpdateUserEntitlement(input *entitlement.UpdateUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := e.Client.Entitlement.UpdateUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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
func (e *EntitlementService) ConsumeUserEntitlement(input *entitlement.ConsumeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Entitlement.ConsumeUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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
func (e *EntitlementService) DisableUserEntitlement(input *entitlement.DisableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Entitlement.DisableUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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
func (e *EntitlementService) EnableUserEntitlement(input *entitlement.EnableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Entitlement.EnableUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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
func (e *EntitlementService) GetUserEntitlementHistories(input *entitlement.GetUserEntitlementHistoriesParams) ([]*platformclientmodels.EntitlementHistoryInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeUserEntitlementShort instead
func (e *EntitlementService) RevokeUserEntitlement(input *entitlement.RevokeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.RevokeUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicExistsAnyMyActiveEntitlementShort instead
func (e *EntitlementService) PublicExistsAnyMyActiveEntitlement(input *entitlement.PublicExistsAnyMyActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyMyActiveEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyAppEntitlementOwnershipByAppIDShort instead
func (e *EntitlementService) PublicGetMyAppEntitlementOwnershipByAppID(input *entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyAppEntitlementOwnershipByAppID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyEntitlementOwnershipByItemIDShort instead
func (e *EntitlementService) PublicGetMyEntitlementOwnershipByItemID(input *entitlement.PublicGetMyEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyEntitlementOwnershipBySkuShort instead
func (e *EntitlementService) PublicGetMyEntitlementOwnershipBySku(input *entitlement.PublicGetMyEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipBySku(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetEntitlementOwnershipTokenShort instead
func (e *EntitlementService) PublicGetEntitlementOwnershipToken(input *entitlement.PublicGetEntitlementOwnershipTokenParams) (*platformclientmodels.OwnershipToken, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetEntitlementOwnershipToken(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryUserEntitlementsShort instead
func (e *EntitlementService) PublicQueryUserEntitlements(input *entitlement.PublicQueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicQueryUserEntitlements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserAppEntitlementByAppIDShort instead
func (e *EntitlementService) PublicGetUserAppEntitlementByAppID(input *entitlement.PublicGetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserAppEntitlementByAppID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryUserEntitlementsByAppTypeShort instead
func (e *EntitlementService) PublicQueryUserEntitlementsByAppType(input *entitlement.PublicQueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicQueryUserEntitlementsByAppType(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementByItemIDShort instead
func (e *EntitlementService) PublicGetUserEntitlementByItemID(input *entitlement.PublicGetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserEntitlementByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementBySkuShort instead
func (e *EntitlementService) PublicGetUserEntitlementBySku(input *entitlement.PublicGetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserEntitlementBySku(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicExistsAnyUserActiveEntitlementShort instead
func (e *EntitlementService) PublicExistsAnyUserActiveEntitlement(input *entitlement.PublicExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyUserActiveEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserAppEntitlementOwnershipByAppIDShort instead
func (e *EntitlementService) PublicGetUserAppEntitlementOwnershipByAppID(input *entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserAppEntitlementOwnershipByAppID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementOwnershipByItemIDShort instead
func (e *EntitlementService) PublicGetUserEntitlementOwnershipByItemID(input *entitlement.PublicGetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementOwnershipBySkuShort instead
func (e *EntitlementService) PublicGetUserEntitlementOwnershipBySku(input *entitlement.PublicGetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipBySku(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementShort instead
func (e *EntitlementService) PublicGetUserEntitlement(input *entitlement.PublicGetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicConsumeUserEntitlementShort instead
func (e *EntitlementService) PublicConsumeUserEntitlement(input *entitlement.PublicConsumeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Entitlement.PublicConsumeUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) QueryEntitlementsShort(input *entitlement.QueryEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryEntitlementsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetEntitlementShort(input *entitlement.GetEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) QueryUserEntitlementsShort(input *entitlement.QueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryUserEntitlementsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GrantUserEntitlementShort(input *entitlement.GrantUserEntitlementParams) ([]*platformclientmodels.StackableEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, err := e.Client.Entitlement.GrantUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (e *EntitlementService) GetUserAppEntitlementByAppIDShort(input *entitlement.GetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserAppEntitlementByAppIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) QueryUserEntitlementsByAppTypeShort(input *entitlement.QueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryUserEntitlementsByAppTypeShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementByItemIDShort(input *entitlement.GetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementByItemIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementBySkuShort(input *entitlement.GetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementBySkuShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) ExistsAnyUserActiveEntitlementShort(input *entitlement.ExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) ExistsAnyUserActiveEntitlementByItemIdsShort(input *entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlementByItemIdsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserAppEntitlementOwnershipByAppIDShort(input *entitlement.GetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserAppEntitlementOwnershipByAppIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementOwnershipByItemIDShort(input *entitlement.GetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipByItemIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementOwnershipBySkuShort(input *entitlement.GetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipBySkuShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) RevokeUserEntitlementsShort(input *entitlement.RevokeUserEntitlementsParams) (*platformclientmodels.BulkOperationResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.RevokeUserEntitlementsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementShort(input *entitlement.GetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) UpdateUserEntitlementShort(input *entitlement.UpdateUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.UpdateUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) ConsumeUserEntitlementShort(input *entitlement.ConsumeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.ConsumeUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) DisableUserEntitlementShort(input *entitlement.DisableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.DisableUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) EnableUserEntitlementShort(input *entitlement.EnableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.EnableUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementHistoriesShort(input *entitlement.GetUserEntitlementHistoriesParams) ([]*platformclientmodels.EntitlementHistoryInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementHistoriesShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) RevokeUserEntitlementShort(input *entitlement.RevokeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.RevokeUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicExistsAnyMyActiveEntitlementShort(input *entitlement.PublicExistsAnyMyActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyMyActiveEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetMyAppEntitlementOwnershipByAppIDShort(input *entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyAppEntitlementOwnershipByAppIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetMyEntitlementOwnershipByItemIDShort(input *entitlement.PublicGetMyEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipByItemIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetMyEntitlementOwnershipBySkuShort(input *entitlement.PublicGetMyEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipBySkuShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetEntitlementOwnershipTokenShort(input *entitlement.PublicGetEntitlementOwnershipTokenParams) (*platformclientmodels.OwnershipToken, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetEntitlementOwnershipTokenShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicQueryUserEntitlementsShort(input *entitlement.PublicQueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicQueryUserEntitlementsShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserAppEntitlementByAppIDShort(input *entitlement.PublicGetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserAppEntitlementByAppIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicQueryUserEntitlementsByAppTypeShort(input *entitlement.PublicQueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicQueryUserEntitlementsByAppTypeShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementByItemIDShort(input *entitlement.PublicGetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementByItemIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementBySkuShort(input *entitlement.PublicGetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementBySkuShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicExistsAnyUserActiveEntitlementShort(input *entitlement.PublicExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyUserActiveEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserAppEntitlementOwnershipByAppIDShort(input *entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserAppEntitlementOwnershipByAppIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementOwnershipByItemIDShort(input *entitlement.PublicGetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemIDShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementOwnershipBySkuShort(input *entitlement.PublicGetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipBySkuShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementShort(input *entitlement.PublicGetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicConsumeUserEntitlementShort(input *entitlement.PublicConsumeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicConsumeUserEntitlementShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

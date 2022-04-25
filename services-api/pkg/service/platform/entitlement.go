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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type EntitlementService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryEntitlementsShort instead
func (e *EntitlementService) QueryEntitlements(input *entitlement.QueryEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryEntitlements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetEntitlementShort instead
func (e *EntitlementService) GetEntitlement(input *entitlement.GetEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryUserEntitlements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GrantUserEntitlementShort instead
func (e *EntitlementService) GrantUserEntitlement(input *entitlement.GrantUserEntitlementParams) ([]*platformclientmodels.StackableEntitlementInfo, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, notFound, unprocessableEntity, err := e.Client.Entitlement.GrantUserEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserAppEntitlementByAppID(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.QueryUserEntitlementsByAppType(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementByItemIDShort instead
func (e *EntitlementService) GetUserEntitlementByItemID(input *entitlement.GetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserEntitlementByItemID(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserEntitlementBySku(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ExistsAnyUserActiveEntitlementByItemIdsShort instead
func (e *EntitlementService) ExistsAnyUserActiveEntitlementByItemIds(input *entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams) (*platformclientmodels.Ownership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlementByItemIds(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserAppEntitlementOwnershipByAppIDShort instead
func (e *EntitlementService) GetUserAppEntitlementOwnershipByAppID(input *entitlement.GetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserAppEntitlementOwnershipByAppID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementOwnershipByItemIDShort instead
func (e *EntitlementService) GetUserEntitlementOwnershipByItemID(input *entitlement.GetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipByItemID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementOwnershipBySkuShort instead
func (e *EntitlementService) GetUserEntitlementOwnershipBySku(input *entitlement.GetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipBySku(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeUserEntitlementsShort instead
func (e *EntitlementService) RevokeUserEntitlements(input *entitlement.RevokeUserEntitlementsParams) (*platformclientmodels.BulkOperationResult, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.RevokeUserEntitlements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserEntitlementShort instead
func (e *EntitlementService) GetUserEntitlement(input *entitlement.GetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := e.Client.Entitlement.UpdateUserEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Entitlement.ConsumeUserEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Entitlement.DisableUserEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Entitlement.EnableUserEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementHistories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RevokeUserEntitlementShort instead
func (e *EntitlementService) RevokeUserEntitlement(input *entitlement.RevokeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.RevokeUserEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyMyActiveEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyAppEntitlementOwnershipByAppIDShort instead
func (e *EntitlementService) PublicGetMyAppEntitlementOwnershipByAppID(input *entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyAppEntitlementOwnershipByAppID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyEntitlementOwnershipByItemIDShort instead
func (e *EntitlementService) PublicGetMyEntitlementOwnershipByItemID(input *entitlement.PublicGetMyEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipByItemID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetMyEntitlementOwnershipBySkuShort instead
func (e *EntitlementService) PublicGetMyEntitlementOwnershipBySku(input *entitlement.PublicGetMyEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipBySku(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetEntitlementOwnershipTokenShort instead
func (e *EntitlementService) PublicGetEntitlementOwnershipToken(input *entitlement.PublicGetEntitlementOwnershipTokenParams) (*platformclientmodels.OwnershipToken, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetEntitlementOwnershipToken(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicQueryUserEntitlementsShort instead
func (e *EntitlementService) PublicQueryUserEntitlements(input *entitlement.PublicQueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicQueryUserEntitlements(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserAppEntitlementByAppIDShort instead
func (e *EntitlementService) PublicGetUserAppEntitlementByAppID(input *entitlement.PublicGetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserAppEntitlementByAppID(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicQueryUserEntitlementsByAppType(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementByItemIDShort instead
func (e *EntitlementService) PublicGetUserEntitlementByItemID(input *entitlement.PublicGetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserEntitlementByItemID(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserEntitlementBySku(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyUserActiveEntitlement(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserAppEntitlementOwnershipByAppIDShort instead
func (e *EntitlementService) PublicGetUserAppEntitlementOwnershipByAppID(input *entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserAppEntitlementOwnershipByAppID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementOwnershipByItemIDShort instead
func (e *EntitlementService) PublicGetUserEntitlementOwnershipByItemID(input *entitlement.PublicGetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementOwnershipBySkuShort instead
func (e *EntitlementService) PublicGetUserEntitlementOwnershipBySku(input *entitlement.PublicGetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipBySku(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserEntitlementShort instead
func (e *EntitlementService) PublicGetUserEntitlement(input *entitlement.PublicGetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserEntitlement(input, client.BearerToken(*token.AccessToken))
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
	token, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := e.Client.Entitlement.PublicConsumeUserEntitlement(input, client.BearerToken(*token.AccessToken))
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

func (e *EntitlementService) QueryEntitlementsShort(input *entitlement.QueryEntitlementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.QueryEntitlementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetEntitlementShort(input *entitlement.GetEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) QueryUserEntitlementsShort(input *entitlement.QueryUserEntitlementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.QueryUserEntitlementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GrantUserEntitlementShort(input *entitlement.GrantUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.StackableEntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	created, err := e.Client.Entitlement.GrantUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (e *EntitlementService) GetUserAppEntitlementByAppIDShort(input *entitlement.GetUserAppEntitlementByAppIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.AppEntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetUserAppEntitlementByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) QueryUserEntitlementsByAppTypeShort(input *entitlement.QueryUserEntitlementsByAppTypeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.QueryUserEntitlementsByAppTypeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementByItemIDShort(input *entitlement.GetUserEntitlementByItemIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementBySkuShort(input *entitlement.GetUserEntitlementBySkuParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) ExistsAnyUserActiveEntitlementShort(input *entitlement.ExistsAnyUserActiveEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.Ownership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) ExistsAnyUserActiveEntitlementByItemIdsShort(input *entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.Ownership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlementByItemIdsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserAppEntitlementOwnershipByAppIDShort(input *entitlement.GetUserAppEntitlementOwnershipByAppIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.Ownership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetUserAppEntitlementOwnershipByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementOwnershipByItemIDShort(input *entitlement.GetUserEntitlementOwnershipByItemIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.TimedOwnership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementOwnershipBySkuShort(input *entitlement.GetUserEntitlementOwnershipBySkuParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.TimedOwnership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) RevokeUserEntitlementsShort(input *entitlement.RevokeUserEntitlementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.BulkOperationResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.RevokeUserEntitlementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementShort(input *entitlement.GetUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) UpdateUserEntitlementShort(input *entitlement.UpdateUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.UpdateUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) ConsumeUserEntitlementShort(input *entitlement.ConsumeUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.ConsumeUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) DisableUserEntitlementShort(input *entitlement.DisableUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.DisableUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) EnableUserEntitlementShort(input *entitlement.EnableUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.EnableUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementHistoriesShort(input *entitlement.GetUserEntitlementHistoriesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.EntitlementHistoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementHistoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) RevokeUserEntitlementShort(input *entitlement.RevokeUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.RevokeUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicExistsAnyMyActiveEntitlementShort(input *entitlement.PublicExistsAnyMyActiveEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.Ownership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyMyActiveEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetMyAppEntitlementOwnershipByAppIDShort(input *entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.Ownership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetMyAppEntitlementOwnershipByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetMyEntitlementOwnershipByItemIDShort(input *entitlement.PublicGetMyEntitlementOwnershipByItemIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.TimedOwnership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetMyEntitlementOwnershipBySkuShort(input *entitlement.PublicGetMyEntitlementOwnershipBySkuParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.TimedOwnership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetEntitlementOwnershipTokenShort(input *entitlement.PublicGetEntitlementOwnershipTokenParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OwnershipToken, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetEntitlementOwnershipTokenShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicQueryUserEntitlementsShort(input *entitlement.PublicQueryUserEntitlementsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicQueryUserEntitlementsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserAppEntitlementByAppIDShort(input *entitlement.PublicGetUserAppEntitlementByAppIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.AppEntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetUserAppEntitlementByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicQueryUserEntitlementsByAppTypeShort(input *entitlement.PublicQueryUserEntitlementsByAppTypeParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicQueryUserEntitlementsByAppTypeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementByItemIDShort(input *entitlement.PublicGetUserEntitlementByItemIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementBySkuShort(input *entitlement.PublicGetUserEntitlementBySkuParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicExistsAnyUserActiveEntitlementShort(input *entitlement.PublicExistsAnyUserActiveEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.Ownership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyUserActiveEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserAppEntitlementOwnershipByAppIDShort(input *entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.Ownership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetUserAppEntitlementOwnershipByAppIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementOwnershipByItemIDShort(input *entitlement.PublicGetUserEntitlementOwnershipByItemIDParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.TimedOwnership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementOwnershipBySkuShort(input *entitlement.PublicGetUserEntitlementOwnershipBySkuParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.TimedOwnership, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipBySkuShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementShort(input *entitlement.PublicGetUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicConsumeUserEntitlementShort(input *entitlement.PublicConsumeUserEntitlementParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.EntitlementInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(e.TokenRepository, nil, security, "")
	}
	ok, err := e.Client.Entitlement.PublicConsumeUserEntitlementShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

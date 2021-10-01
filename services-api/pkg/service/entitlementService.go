// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type EntitlementService struct {
	PlatformService *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (entitlementService *EntitlementService) QueryEntitlement(namespace string, userId, appType, entitlementClazz, entitlementName, itemId *string, limit, offset *int32, activeOnly *bool) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &entitlement.QueryEntitlementsParams{
		ActiveOnly:       activeOnly,
		AppType:          appType,
		EntitlementClazz: entitlementClazz,
		EntitlementName:  entitlementName,
		ItemID:           itemId,
		Limit:            limit,
		Namespace:        namespace,
		Offset:           offset,
		UserID:           userId,
	}
	entitlements, err := entitlementService.PlatformService.Entitlement.QueryEntitlements(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlements.GetPayload(), err
}

func (entitlementService *EntitlementService) GetEntitlement(namespace, entitlementId string) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &entitlement.GetEntitlementParams{
		EntitlementID: entitlementId,
		Namespace:     namespace,
	}
	ok, notFound, err := entitlementService.PlatformService.Entitlement.GetEntitlement(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (entitlementService *EntitlementService) GetUserEntitlementHistories(namespace, entitlementId, userId string) ([]*platformclientmodels.EntitlementHistoryInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &entitlement.GetUserEntitlementHistoriesParams{
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	entitlementHistories, err := entitlementService.PlatformService.Entitlement.GetUserEntitlementHistories(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementHistories.GetPayload(), err
}

func (entitlementService *EntitlementService) GetUserDistributionReceivers(namespace, userId string) ([]*platformclientmodels.DistributionReceiverInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &entitlement.GetUserDistributionReceiversParams{
		Namespace: namespace,
		UserID:    userId,
	}
	userDistributionReceivers, badRequest, err := entitlementService.PlatformService.Entitlement.GetUserDistributionReceivers(params, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userDistributionReceivers.GetPayload(), err
}

func (entitlementService *EntitlementService) GetUserEntitlementBySku(namespace, sku, userId string, entitlementClazz *string, activeOnly *bool) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &entitlement.GetUserEntitlementBySkuParams{
		ActiveOnly:       activeOnly,
		EntitlementClazz: entitlementClazz,
		Namespace:        namespace,
		Sku:              sku,
		UserID:           userId,
	}
	ok, notFound, err := entitlementService.PlatformService.Entitlement.GetUserEntitlementBySku(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (entitlementService *EntitlementService) QueryUserEntitlements(namespace, userId string, appType, entitlementClazz, entitlementName, itemId *string, limit, offset *int32, activeOnly *bool) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &entitlement.QueryUserEntitlementsParams{
		ActiveOnly:       activeOnly,
		AppType:          appType,
		EntitlementClazz: entitlementClazz,
		EntitlementName:  entitlementName,
		ItemID:           itemId,
		Limit:            limit,
		Namespace:        namespace,
		Offset:           offset,
		UserID:           userId,
	}
	entitlements, err := entitlementService.PlatformService.Entitlement.QueryUserEntitlements(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlements.GetPayload(), err
}

func (entitlementService *EntitlementService) GrantUserEntitlement(namespace, userId string, entitlementGrants []platformclientmodels.EntitlementGrant) ([]*platformclientmodels.StackableEntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	var entitlementGrantParam []*platformclientmodels.EntitlementGrant
	for _, entitlementGrant := range entitlementGrants {
		entitlementGrantParam = append(entitlementGrantParam, &entitlementGrant)
	}
	param := &entitlement.GrantUserEntitlementParams{
		Body:      entitlementGrantParam,
		Namespace: namespace,
		UserID:    userId,
	}
	grantUserEntitlement, notFound, unprocessableEntity, err := entitlementService.PlatformService.Entitlement.GrantUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return grantUserEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) RevokeUserEntitlements(namespace, userId, entitlementIds string) (*platformclientmodels.BulkOperationResult, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.RevokeUserEntitlementsParams{
		EntitlementIds: entitlementIds,
		Namespace:      namespace,
		UserID:         userId,
	}
	activeEntitlement, err := entitlementService.PlatformService.Entitlement.RevokeUserEntitlements(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return activeEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) GetUserEntitlement(namespace, userId, entitlementId string) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &entitlement.GetUserEntitlementParams{
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	userEntitlement, notFound, err := entitlementService.PlatformService.Entitlement.GetUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) UpdateUserEntitlement(namespace, userId, entitlementId string, entitlementUpdate platformclientmodels.EntitlementUpdate) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &entitlement.UpdateUserEntitlementParams{
		Body:          &entitlementUpdate,
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	userEntitlement, notFound, conflict, unprocessableEntity, err := entitlementService.PlatformService.Entitlement.UpdateUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) GetUserEntitlementOwnershipBySku(namespace, userId, sku string, entitlementClazz *string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.GetUserEntitlementOwnershipBySkuParams{
		EntitlementClazz: entitlementClazz,
		Namespace:        namespace,
		Sku:              sku,
		UserID:           userId,
	}
	activeEntitlement, err := entitlementService.PlatformService.Entitlement.GetUserEntitlementOwnershipBySku(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return activeEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) CreateUserDistributionReceiver(namespace, userId, extUserId string, distributionReceiverCreate platformclientmodels.DistributionReceiverCreate) error {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	param := &entitlement.CreateUserDistributionReceiverParams{
		Body:      &distributionReceiverCreate,
		ExtUserID: extUserId,
		Namespace: namespace,
		UserID:    userId,
	}
	_, conflict, err := entitlementService.PlatformService.Entitlement.CreateUserDistributionReceiver(param, client.BearerToken(*accessToken.AccessToken))
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (entitlementService *EntitlementService) UpdateUserDistributionReceiver(namespace, userId, extUserId string, distributionReceiverCreate platformclientmodels.DistributionReceiverCreate) error {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	param := &entitlement.UpdateUserDistributionReceiverParams{
		Body:      &distributionReceiverCreate,
		ExtUserID: extUserId,
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = entitlementService.PlatformService.Entitlement.UpdateUserDistributionReceiver(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (entitlementService *EntitlementService) DeleteUserDistributionReceiver(namespace, userId, extUserId string) error {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	param := &entitlement.DeleteUserDistributionReceiverParams{
		ExtUserID: extUserId,
		Namespace: namespace,
		UserID:    userId,
	}
	_, notFound, err := entitlementService.PlatformService.Entitlement.DeleteUserDistributionReceiver(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (entitlementService *EntitlementService) GetUserAppEntitlementByAppID(namespace, userId, appId string, activeOnly *bool) (*platformclientmodels.AppEntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.GetUserAppEntitlementByAppIDParams{
		ActiveOnly: activeOnly,
		AppID:      appId,
		Namespace:  namespace,
		UserID:     userId,
	}
	userEntitlement, notFound, err := entitlementService.PlatformService.Entitlement.GetUserAppEntitlementByAppID(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) GetUserAppEntitlementOwnershipByAppID(namespace, userId, appId string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.GetUserAppEntitlementOwnershipByAppIDParams{
		AppID:     appId,
		Namespace: namespace,
		UserID:    userId,
	}
	ownershipByAppID, err := entitlementService.PlatformService.Entitlement.GetUserAppEntitlementOwnershipByAppID(param, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (entitlementService *EntitlementService) DisableUserEntitlement(namespace, userId, entitlementId string) error {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	param := &entitlement.DisableUserEntitlementParams{
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	_, notFound, conflict, err := entitlementService.PlatformService.Entitlement.DisableUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (entitlementService *EntitlementService) ConsumeUserEntitlement(namespace, userId, entitlementId string, entitlementDecrement platformclientmodels.EntitlementDecrement) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.ConsumeUserEntitlementParams{
		Body:          &entitlementDecrement,
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	userEntitlement, notFound, conflict, err := entitlementService.PlatformService.Entitlement.ConsumeUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) EnableUserEntitlement(namespace, userId, entitlementId string) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.EnableUserEntitlementParams{
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	userEntitlement, notFound, conflict, err := entitlementService.PlatformService.Entitlement.EnableUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) QueryUserEntitlementsByAppType(namespace, userId, appType string, activeOnly *bool, limit, offset *int32) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.QueryUserEntitlementsByAppTypeParams{
		ActiveOnly: activeOnly,
		AppType:    appType,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
		UserID:     userId,
	}
	entitlementsByAppType, err := entitlementService.PlatformService.Entitlement.QueryUserEntitlementsByAppType(param, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementsByAppType.GetPayload(), nil
}

func (entitlementService *EntitlementService) ExistsAnyUserActiveEntitlementByItemIds(namespace, userId string, itemIds []string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams{
		ItemIds:   itemIds,
		Namespace: namespace,
		UserID:    userId,
	}
	entitlementsByAppType, err := entitlementService.PlatformService.Entitlement.ExistsAnyUserActiveEntitlementByItemIds(param, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementsByAppType.GetPayload(), nil
}

func (entitlementService *EntitlementService) ExistsAnyUserActiveEntitlement(namespace, userId string, appIds, itemIds, skus []string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.ExistsAnyUserActiveEntitlementParams{
		AppIds:    appIds,
		ItemIds:   itemIds,
		Namespace: namespace,
		Skus:      skus,
		UserID:    userId,
	}
	entitlementsByAppType, err := entitlementService.PlatformService.Entitlement.ExistsAnyUserActiveEntitlement(param, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementsByAppType.GetPayload(), nil
}

func (entitlementService *EntitlementService) RevokeUserEntitlement(namespace, userId, entitlementId string) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.RevokeUserEntitlementParams{
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	userEntitlement, notFound, err := entitlementService.PlatformService.Entitlement.RevokeUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicGetMyAppEntitlementOwnershipByAppID(namespace, appId string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams{
		AppID:     appId,
		Namespace: namespace,
	}
	ownershipByAppID, err := entitlementService.PlatformService.Entitlement.PublicGetMyAppEntitlementOwnershipByAppID(param, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicGetMyEntitlementOwnershipBySku(namespace, sku string, entitlementClazz *string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicGetMyEntitlementOwnershipBySkuParams{
		EntitlementClazz: entitlementClazz,
		Namespace:        namespace,
		Sku:              sku,
	}
	ownershipByAppID, err := entitlementService.PlatformService.Entitlement.PublicGetMyEntitlementOwnershipBySku(param, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicExistsAnyUserActiveEntitlement(namespace, userId string, appIds, itemIds, skus []string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicExistsAnyUserActiveEntitlementParams{
		AppIds:    appIds,
		ItemIds:   itemIds,
		Namespace: namespace,
		Skus:      skus,
		UserID:    userId,
	}
	ownershipByAppID, err := entitlementService.PlatformService.Entitlement.PublicExistsAnyUserActiveEntitlement(param, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicGetUserAppEntitlementByAppID(namespace, userId, appId string) (*platformclientmodels.AppEntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicGetUserAppEntitlementByAppIDParams{
		AppID:     appId,
		Namespace: namespace,
		UserID:    userId,
	}
	entitlementByAppID, notFound, err := entitlementService.PlatformService.Entitlement.PublicGetUserAppEntitlementByAppID(param, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementByAppID.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicCreateUserDistributionReceiver(namespace, userId, extUserId string, distributionReceiverCreate platformclientmodels.DistributionReceiverCreate) error {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	param := &entitlement.PublicCreateUserDistributionReceiverParams{
		Body:      &distributionReceiverCreate,
		ExtUserID: extUserId,
		Namespace: namespace,
		UserID:    userId,
	}
	_, notFound, err := entitlementService.PlatformService.Entitlement.PublicCreateUserDistributionReceiver(param, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (entitlementService *EntitlementService) PublicUpdateUserDistributionReceiver(namespace, userId, extUserId string, distributionReceiverCreate platformclientmodels.DistributionReceiverCreate) error {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	param := &entitlement.PublicUpdateUserDistributionReceiverParams{
		Body:      &distributionReceiverCreate,
		ExtUserID: extUserId,
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = entitlementService.PlatformService.Entitlement.PublicUpdateUserDistributionReceiver(param, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (entitlementService *EntitlementService) PublicDeleteUserDistributionReceiver(namespace, userId, extUserId string) error {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	param := &entitlement.PublicDeleteUserDistributionReceiverParams{
		ExtUserID: extUserId,
		Namespace: namespace,
		UserID:    userId,
	}
	_, notFound, err := entitlementService.PlatformService.Entitlement.PublicDeleteUserDistributionReceiver(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (entitlementService *EntitlementService) PublicGetUserEntitlementOwnershipBySku(namespace, userId, sku string, entitlementClazz *string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicGetUserEntitlementOwnershipBySkuParams{
		EntitlementClazz: entitlementClazz,
		Namespace:        namespace,
		Sku:              sku,
		UserID:           userId,
	}
	ownershipBySku, err := entitlementService.PlatformService.Entitlement.PublicGetUserEntitlementOwnershipBySku(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipBySku.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicQueryUserEntitlements(namespace, userId string, appType, entitlementName, itemId, entitlementClazz *string, limit, offset *int32) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicQueryUserEntitlementsParams{
		AppType:          appType,
		EntitlementClazz: entitlementClazz,
		EntitlementName:  entitlementName,
		ItemID:           itemId,
		Limit:            limit,
		Namespace:        namespace,
		Offset:           offset,
		UserID:           userId,
	}
	ownershipBySku, err := entitlementService.PlatformService.Entitlement.PublicQueryUserEntitlements(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipBySku.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicGetUserEntitlement(namespace, userId, entitlementId string) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicGetUserEntitlementParams{
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	userEntitlement, notFound, err := entitlementService.PlatformService.Entitlement.PublicGetUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicGetUserAppEntitlementOwnershipByAppID(namespace, userId, appId string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams{
		AppID:     appId,
		Namespace: namespace,
		UserID:    userId,
	}
	ownershipByAppID, err := entitlementService.PlatformService.Entitlement.PublicGetUserAppEntitlementOwnershipByAppID(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicGetUserEntitlementBySku(namespace, userId, sku string, entitlementClazz *string) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicGetUserEntitlementBySkuParams{
		EntitlementClazz: entitlementClazz,
		Namespace:        namespace,
		Sku:              sku,
		UserID:           userId,
	}
	entitlementBySku, notFound, err := entitlementService.PlatformService.Entitlement.PublicGetUserEntitlementBySku(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementBySku.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicGetUserDistributionReceivers(namespace, userId, targetNamespace string) ([]*platformclientmodels.DistributionReceiverInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicGetUserDistributionReceiversParams{
		Namespace:       namespace,
		TargetNamespace: targetNamespace,
		UserID:          userId,
	}
	distributionReceivers, badRequest, notFound, err := entitlementService.PlatformService.Entitlement.PublicGetUserDistributionReceivers(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return distributionReceivers.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicDistributeUserDistribution(namespace, userId, entitlementId, extUserId, targetNamespace string, quantity *int32) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicDistributeUserDistributionParams{
		EntitlementID:   entitlementId,
		ExtUserID:       extUserId,
		Namespace:       namespace,
		Quantity:        quantity,
		TargetNamespace: targetNamespace,
		UserID:          userId,
	}
	distributionReceivers, badRequest, notFound, err := entitlementService.PlatformService.Entitlement.PublicDistributeUserDistribution(param, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return distributionReceivers.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicQueryUserEntitlementsByAppType(namespace, userId, appType string, limit, offset *int32) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicQueryUserEntitlementsByAppTypeParams{
		AppType:   appType,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		UserID:    userId,
	}
	entitlementsByAppType, err := entitlementService.PlatformService.Entitlement.PublicQueryUserEntitlementsByAppType(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementsByAppType.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicConsumeUserEntitlement(namespace, userId, entitlementId string, entitlementDecrement platformclientmodels.EntitlementDecrement) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicConsumeUserEntitlementParams{
		Body:          &entitlementDecrement,
		EntitlementID: entitlementId,
		Namespace:     namespace,
		UserID:        userId,
	}
	userEntitlement, notFound, conflict, err := entitlementService.PlatformService.Entitlement.PublicConsumeUserEntitlement(param, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}

	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return userEntitlement.GetPayload(), nil
}

func (entitlementService *EntitlementService) PublicExistsAnyMyActiveEntitlement(namespace string, itemIds, appIds, skus []string) (*platformclientmodels.Ownership, error) {
	accessToken, err := entitlementService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	param := &entitlement.PublicExistsAnyMyActiveEntitlementParams{
		AppIds:    appIds,
		ItemIds:   itemIds,
		Namespace: namespace,
		Skus:      skus,
	}
	ok, err := entitlementService.PlatformService.Entitlement.PublicExistsAnyMyActiveEntitlement(param, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

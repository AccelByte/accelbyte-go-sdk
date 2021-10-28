// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package platform

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
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (e *EntitlementService) QueryEntitlement(input *entitlement.QueryEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	entitlements, err := e.Client.Entitlement.QueryEntitlements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlements.GetPayload(), err
}

func (e *EntitlementService) GetEntitlement(input *entitlement.GetEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) GetUserEntitlementHistories(input *entitlement.GetUserEntitlementHistoriesParams) ([]*platformclientmodels.EntitlementHistoryInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	entitlementHistories, err := e.Client.Entitlement.GetUserEntitlementHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementHistories.GetPayload(), err
}

func (e *EntitlementService) GetUserDistributionReceivers(input *entitlement.GetUserDistributionReceiversParams) ([]*platformclientmodels.DistributionReceiverInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	userDistributionReceivers, badRequest, err := e.Client.Entitlement.GetUserDistributionReceivers(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) GetUserEntitlementBySku(input *entitlement.GetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserEntitlementBySku(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) QueryUserEntitlements(input *entitlement.QueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	entitlements, err := e.Client.Entitlement.QueryUserEntitlements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlements.GetPayload(), err
}

func (e *EntitlementService) GrantUserEntitlement(input *entitlement.GrantUserEntitlementParams) ([]*platformclientmodels.StackableEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	grantUserEntitlement, notFound, unprocessableEntity, err := e.Client.Entitlement.GrantUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) RevokeUserEntitlements(input *entitlement.RevokeUserEntitlementsParams) (*platformclientmodels.BulkOperationResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	activeEntitlement, err := e.Client.Entitlement.RevokeUserEntitlements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return activeEntitlement.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlement(input *entitlement.GetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	userEntitlement, notFound, err := e.Client.Entitlement.GetUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) UpdateUserEntitlement(input *entitlement.UpdateUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	userEntitlement, notFound, conflict, unprocessableEntity, err := e.Client.Entitlement.UpdateUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) GetUserEntitlementOwnershipBySku(input *entitlement.GetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	activeEntitlement, err := e.Client.Entitlement.GetUserEntitlementOwnershipBySku(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return activeEntitlement.GetPayload(), nil
}

func (e *EntitlementService) CreateUserDistributionReceiver(input *entitlement.CreateUserDistributionReceiverParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, conflict, err := e.Client.Entitlement.CreateUserDistributionReceiver(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) UpdateUserDistributionReceiver(input *entitlement.UpdateUserDistributionReceiverParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = e.Client.Entitlement.UpdateUserDistributionReceiver(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (e *EntitlementService) DeleteUserDistributionReceiver(input *entitlement.DeleteUserDistributionReceiverParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, notFound, err := e.Client.Entitlement.DeleteUserDistributionReceiver(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) GetUserAppEntitlementByAppID(input *entitlement.GetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	userEntitlement, notFound, err := e.Client.Entitlement.GetUserAppEntitlementByAppID(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) GetUserAppEntitlementOwnershipByAppID(input *entitlement.GetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ownershipByAppID, err := e.Client.Entitlement.GetUserAppEntitlementOwnershipByAppID(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (e *EntitlementService) DisableUserEntitlement(input *entitlement.DisableUserEntitlementParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, notFound, conflict, err := e.Client.Entitlement.DisableUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))

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

func (e *EntitlementService) ConsumeUserEntitlement(input *entitlement.ConsumeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	userEntitlement, notFound, conflict, err := e.Client.Entitlement.ConsumeUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))

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

func (e *EntitlementService) EnableUserEntitlement(input *entitlement.EnableUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	userEntitlement, notFound, conflict, err := e.Client.Entitlement.EnableUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))

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

func (e *EntitlementService) QueryUserEntitlementsByAppType(input *entitlement.QueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	entitlementsByAppType, err := e.Client.Entitlement.QueryUserEntitlementsByAppType(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementsByAppType.GetPayload(), nil
}

func (e *EntitlementService) ExistsAnyUserActiveEntitlementByItemIds(input *entitlement.ExistsAnyUserActiveEntitlementByItemIdsParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	entitlementsByAppType, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlementByItemIds(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementsByAppType.GetPayload(), nil
}

func (e *EntitlementService) ExistsAnyUserActiveEntitlement(input *entitlement.ExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	entitlementsByAppType, err := e.Client.Entitlement.ExistsAnyUserActiveEntitlement(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementsByAppType.GetPayload(), nil
}

func (e *EntitlementService) RevokeUserEntitlement(input *entitlement.RevokeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	userEntitlement, notFound, err := e.Client.Entitlement.RevokeUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) PublicGetMyAppEntitlementOwnershipByAppID(input *entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ownershipByAppID, err := e.Client.Entitlement.PublicGetMyAppEntitlementOwnershipByAppID(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (e *EntitlementService) PublicGetMyEntitlementOwnershipBySku(input *entitlement.PublicGetMyEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ownershipByAppID, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipBySku(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (e *EntitlementService) PublicExistsAnyUserActiveEntitlement(input *entitlement.PublicExistsAnyUserActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ownershipByAppID, err := e.Client.Entitlement.PublicExistsAnyUserActiveEntitlement(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserAppEntitlementByAppID(input *entitlement.PublicGetUserAppEntitlementByAppIDParams) (*platformclientmodels.AppEntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	entitlementByAppID, notFound, err := e.Client.Entitlement.PublicGetUserAppEntitlementByAppID(input, client.BearerToken(*accessToken.AccessToken))

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

func (e *EntitlementService) PublicCreateUserDistributionReceiver(input *entitlement.PublicCreateUserDistributionReceiverParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, notFound, err := e.Client.Entitlement.PublicCreateUserDistributionReceiver(input, client.BearerToken(*accessToken.AccessToken))

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

func (e *EntitlementService) PublicUpdateUserDistributionReceiver(input *entitlement.PublicUpdateUserDistributionReceiverParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = e.Client.Entitlement.PublicUpdateUserDistributionReceiver(input, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (e *EntitlementService) PublicDeleteUserDistributionReceiver(input *entitlement.PublicDeleteUserDistributionReceiverParams) error {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, notFound, err := e.Client.Entitlement.PublicDeleteUserDistributionReceiver(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) PublicGetUserEntitlementOwnershipBySku(input *entitlement.PublicGetUserEntitlementOwnershipBySkuParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ownershipBySku, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipBySku(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipBySku.GetPayload(), nil
}

func (e *EntitlementService) PublicQueryUserEntitlements(input *entitlement.PublicQueryUserEntitlementsParams) (*platformclientmodels.EntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ownershipBySku, err := e.Client.Entitlement.PublicQueryUserEntitlements(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipBySku.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlement(input *entitlement.PublicGetUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	userEntitlement, notFound, err := e.Client.Entitlement.PublicGetUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) PublicGetUserAppEntitlementOwnershipByAppID(input *entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ownershipByAppID, err := e.Client.Entitlement.PublicGetUserAppEntitlementOwnershipByAppID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ownershipByAppID.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementBySku(input *entitlement.PublicGetUserEntitlementBySkuParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	entitlementBySku, notFound, err := e.Client.Entitlement.PublicGetUserEntitlementBySku(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) PublicGetUserDistributionReceivers(input *entitlement.PublicGetUserDistributionReceiversParams) ([]*platformclientmodels.DistributionReceiverInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	distributionReceivers, badRequest, notFound, err := e.Client.Entitlement.PublicGetUserDistributionReceivers(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) PublicDistributeUserDistribution(input *entitlement.PublicDistributeUserDistributionParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	distributionReceivers, badRequest, notFound, err := e.Client.Entitlement.PublicDistributeUserDistribution(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) PublicQueryUserEntitlementsByAppType(input *entitlement.PublicQueryUserEntitlementsByAppTypeParams) (*platformclientmodels.AppEntitlementPagingSlicedResult, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	entitlementsByAppType, err := e.Client.Entitlement.PublicQueryUserEntitlementsByAppType(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return entitlementsByAppType.GetPayload(), nil
}

func (e *EntitlementService) PublicConsumeUserEntitlement(input *entitlement.PublicConsumeUserEntitlementParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	userEntitlement, notFound, conflict, err := e.Client.Entitlement.PublicConsumeUserEntitlement(input, client.BearerToken(*accessToken.AccessToken))
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

func (e *EntitlementService) PublicExistsAnyMyActiveEntitlement(input *entitlement.PublicExistsAnyMyActiveEntitlementParams) (*platformclientmodels.Ownership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicExistsAnyMyActiveEntitlement(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementByItemID(input *entitlement.GetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.GetUserEntitlementByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) GetUserEntitlementOwnershipByItemID(input *entitlement.GetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := e.Client.Entitlement.GetUserEntitlementOwnershipByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetEntitlementOwnershipToken(input *entitlement.PublicGetEntitlementOwnershipTokenParams) (*platformclientmodels.OwnershipToken, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetEntitlementOwnershipToken(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetMyEntitlementOwnershipByItemID(input *entitlement.PublicGetMyEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetMyEntitlementOwnershipByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementByItemID(input *entitlement.PublicGetUserEntitlementByItemIDParams) (*platformclientmodels.EntitlementInfo, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, notFound, err := e.Client.Entitlement.PublicGetUserEntitlementByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (e *EntitlementService) PublicGetUserEntitlementOwnershipByItemID(input *entitlement.PublicGetUserEntitlementOwnershipByItemIDParams) (*platformclientmodels.TimedOwnership, error) {
	accessToken, err := e.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := e.Client.Entitlement.PublicGetUserEntitlementOwnershipByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

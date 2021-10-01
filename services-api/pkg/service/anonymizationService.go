// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AnonymizationService struct {
	OauthService    *OauthService
	PlatformService *platformclient.JusticePlatformService
}

// AnonymizeEntitlement anonymize entitlement
func (anonymizationService *AnonymizationService) AnonymizeEntitlement(namespace, userId string) error {
	token, err := anonymizationService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &anonymization.AnonymizeEntitlementParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = anonymizationService.PlatformService.Anonymization.AnonymizeEntitlement(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AnonymizeFulfillment anonymize fulfillment
func (anonymizationService *AnonymizationService) AnonymizeFulfillment(namespace, userId string) error {
	token, err := anonymizationService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &anonymization.AnonymizeFulfillmentParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = anonymizationService.PlatformService.Anonymization.AnonymizeFulfillment(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AnonymizeWallet anonymize wallet
func (anonymizationService *AnonymizationService) AnonymizeWallet(namespace, userId string) error {
	token, err := anonymizationService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &anonymization.AnonymizeWalletParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = anonymizationService.PlatformService.Anonymization.AnonymizeWallet(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

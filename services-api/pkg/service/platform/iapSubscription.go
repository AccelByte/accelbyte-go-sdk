// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap_subscription"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type IAPSubscriptionService struct {
	Client           *platformclient.JusticePlatformService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdIAPSubscription *string

func (aaa *IAPSubscriptionService) UpdateFlightId(flightId string) {
	tempFlightIdIAPSubscription = &flightId
}

func (aaa *IAPSubscriptionService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use QueryThirdPartySubscriptionShort instead.
func (aaa *IAPSubscriptionService) QueryThirdPartySubscription(input *iap_subscription.QueryThirdPartySubscriptionParams) (*platformclientmodels.ThirdPartyUserSubscriptionPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.IAPSubscription.QueryThirdPartySubscription(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use QueryUserThirdPartySubscriptionShort instead.
func (aaa *IAPSubscriptionService) QueryUserThirdPartySubscription(input *iap_subscription.QueryUserThirdPartySubscriptionParams) (*platformclientmodels.ThirdPartyUserSubscriptionPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.IAPSubscription.QueryUserThirdPartySubscription(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort instead.
func (aaa *IAPSubscriptionService) GetThirdPartyPlatformSubscriptionOwnershipByGroupID(input *iap_subscription.GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) (*platformclientmodels.ThirdPartySubscriptionOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.IAPSubscription.GetThirdPartyPlatformSubscriptionOwnershipByGroupID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort instead.
func (aaa *IAPSubscriptionService) GetThirdPartyPlatformSubscriptionOwnershipByProductID(input *iap_subscription.GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) (*platformclientmodels.ThirdPartySubscriptionOwnership, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.IAPSubscription.GetThirdPartyPlatformSubscriptionOwnershipByProductID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use QueryUserThirdPartySubscriptionTransactionsShort instead.
func (aaa *IAPSubscriptionService) QueryUserThirdPartySubscriptionTransactions(input *iap_subscription.QueryUserThirdPartySubscriptionTransactionsParams) (*platformclientmodels.ThirdPartySubscriptionTransactionPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.IAPSubscription.QueryUserThirdPartySubscriptionTransactions(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetThirdPartySubscriptionDetailsShort instead.
func (aaa *IAPSubscriptionService) GetThirdPartySubscriptionDetails(input *iap_subscription.GetThirdPartySubscriptionDetailsParams) (*platformclientmodels.ThirdPartySubscriptionTransactionInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.IAPSubscription.GetThirdPartySubscriptionDetails(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use GetSubscriptionHistoryShort instead.
func (aaa *IAPSubscriptionService) GetSubscriptionHistory(input *iap_subscription.GetSubscriptionHistoryParams) (*platformclientmodels.ThirdPartySubscriptionTransactionHistoryPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.IAPSubscription.GetSubscriptionHistory(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SyncSubscriptionTransactionShort instead.
func (aaa *IAPSubscriptionService) SyncSubscriptionTransaction(input *iap_subscription.SyncSubscriptionTransactionParams) (*platformclientmodels.ThirdPartySubscriptionTransactionInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.IAPSubscription.SyncSubscriptionTransaction(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use GetThirdPartyUserSubscriptionDetailsShort instead.
func (aaa *IAPSubscriptionService) GetThirdPartyUserSubscriptionDetails(input *iap_subscription.GetThirdPartyUserSubscriptionDetailsParams) (*platformclientmodels.ThirdPartyUserSubscriptionInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.IAPSubscription.GetThirdPartyUserSubscriptionDetails(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use SyncSubscriptionShort instead.
func (aaa *IAPSubscriptionService) SyncSubscription(input *iap_subscription.SyncSubscriptionParams) (*platformclientmodels.ThirdPartyUserSubscriptionInfo, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.IAPSubscription.SyncSubscription(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicQueryUserThirdPartySubscriptionShort instead.
func (aaa *IAPSubscriptionService) PublicQueryUserThirdPartySubscription(input *iap_subscription.PublicQueryUserThirdPartySubscriptionParams) (*platformclientmodels.ThirdPartyUserSubscriptionPagingSlicedResult, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.IAPSubscription.PublicQueryUserThirdPartySubscription(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) QueryThirdPartySubscriptionShort(input *iap_subscription.QueryThirdPartySubscriptionParams) (*platformclientmodels.ThirdPartyUserSubscriptionPagingSlicedResult, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.QueryThirdPartySubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) QueryUserThirdPartySubscriptionShort(input *iap_subscription.QueryUserThirdPartySubscriptionParams) (*platformclientmodels.ThirdPartyUserSubscriptionPagingSlicedResult, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.QueryUserThirdPartySubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort(input *iap_subscription.GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) (*platformclientmodels.ThirdPartySubscriptionOwnership, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort(input *iap_subscription.GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) (*platformclientmodels.ThirdPartySubscriptionOwnership, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) QueryUserThirdPartySubscriptionTransactionsShort(input *iap_subscription.QueryUserThirdPartySubscriptionTransactionsParams) (*platformclientmodels.ThirdPartySubscriptionTransactionPagingSlicedResult, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.QueryUserThirdPartySubscriptionTransactionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) GetThirdPartySubscriptionDetailsShort(input *iap_subscription.GetThirdPartySubscriptionDetailsParams) (*platformclientmodels.ThirdPartySubscriptionTransactionInfo, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.GetThirdPartySubscriptionDetailsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) GetSubscriptionHistoryShort(input *iap_subscription.GetSubscriptionHistoryParams) (*platformclientmodels.ThirdPartySubscriptionTransactionHistoryPagingSlicedResult, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.GetSubscriptionHistoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) SyncSubscriptionTransactionShort(input *iap_subscription.SyncSubscriptionTransactionParams) (*platformclientmodels.ThirdPartySubscriptionTransactionInfo, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.SyncSubscriptionTransactionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) GetThirdPartyUserSubscriptionDetailsShort(input *iap_subscription.GetThirdPartyUserSubscriptionDetailsParams) (*platformclientmodels.ThirdPartyUserSubscriptionInfo, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.GetThirdPartyUserSubscriptionDetailsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) SyncSubscriptionShort(input *iap_subscription.SyncSubscriptionParams) (*platformclientmodels.ThirdPartyUserSubscriptionInfo, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.SyncSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *IAPSubscriptionService) PublicQueryUserThirdPartySubscriptionShort(input *iap_subscription.PublicQueryUserThirdPartySubscriptionParams) (*platformclientmodels.ThirdPartyUserSubscriptionPagingSlicedResult, error) {
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
	if tempFlightIdIAPSubscription != nil {
		input.XFlightId = tempFlightIdIAPSubscription
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.IAPSubscription.PublicQueryUserThirdPartySubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type SubscriptionService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QuerySubscriptionsShort instead
func (s *SubscriptionService) QuerySubscriptions(input *subscription.QuerySubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.QuerySubscriptions(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use RecurringChargeSubscriptionShort instead
func (s *SubscriptionService) RecurringChargeSubscription(input *subscription.RecurringChargeSubscriptionParams) (*platformclientmodels.RecurringChargeResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.RecurringChargeSubscription(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUserSubscriptionsShort instead
func (s *SubscriptionService) QueryUserSubscriptions(input *subscription.QueryUserSubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.QueryUserSubscriptions(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserSubscriptionActivitiesShort instead
func (s *SubscriptionService) GetUserSubscriptionActivities(input *subscription.GetUserSubscriptionActivitiesParams) (*platformclientmodels.SubscriptionActivityPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.GetUserSubscriptionActivities(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PlatformSubscribeSubscriptionShort instead
func (s *SubscriptionService) PlatformSubscribeSubscription(input *subscription.PlatformSubscribeSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, created, badRequest, notFound, unprocessableEntity, err := s.Client.Subscription.PlatformSubscribeSubscription(input, client.BearerToken(*token.AccessToken))
	if created != nil {
		return nil, created
	}
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CheckUserSubscriptionSubscribableByItemIDShort instead
func (s *SubscriptionService) CheckUserSubscriptionSubscribableByItemID(input *subscription.CheckUserSubscriptionSubscribableByItemIDParams) (*platformclientmodels.Subscribable, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.CheckUserSubscriptionSubscribableByItemID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserSubscriptionShort instead
func (s *SubscriptionService) GetUserSubscription(input *subscription.GetUserSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Subscription.GetUserSubscription(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteUserSubscriptionShort instead
func (s *SubscriptionService) DeleteUserSubscription(input *subscription.DeleteUserSubscriptionParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.Subscription.DeleteUserSubscription(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use CancelSubscriptionShort instead
func (s *SubscriptionService) CancelSubscription(input *subscription.CancelSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := s.Client.Subscription.CancelSubscription(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GrantDaysToSubscriptionShort instead
func (s *SubscriptionService) GrantDaysToSubscription(input *subscription.GrantDaysToSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Subscription.GrantDaysToSubscription(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserSubscriptionBillingHistoriesShort instead
func (s *SubscriptionService) GetUserSubscriptionBillingHistories(input *subscription.GetUserSubscriptionBillingHistoriesParams) (*platformclientmodels.BillingHistoryPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.GetUserSubscriptionBillingHistories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ProcessUserSubscriptionNotificationShort instead
func (s *SubscriptionService) ProcessUserSubscriptionNotification(input *subscription.ProcessUserSubscriptionNotificationParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := s.Client.Subscription.ProcessUserSubscriptionNotification(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicQueryUserSubscriptionsShort instead
func (s *SubscriptionService) PublicQueryUserSubscriptions(input *subscription.PublicQueryUserSubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.PublicQueryUserSubscriptions(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicSubscribeSubscriptionShort instead
func (s *SubscriptionService) PublicSubscribeSubscription(input *subscription.PublicSubscribeSubscriptionParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := s.Client.Subscription.PublicSubscribeSubscription(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if unprocessableEntity != nil {
		return unprocessableEntity
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use PublicCheckUserSubscriptionSubscribableByItemIDShort instead
func (s *SubscriptionService) PublicCheckUserSubscriptionSubscribableByItemID(input *subscription.PublicCheckUserSubscriptionSubscribableByItemIDParams) (*platformclientmodels.Subscribable, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.PublicCheckUserSubscriptionSubscribableByItemID(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserSubscriptionShort instead
func (s *SubscriptionService) PublicGetUserSubscription(input *subscription.PublicGetUserSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Subscription.PublicGetUserSubscription(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicChangeSubscriptionBillingAccountShort instead
func (s *SubscriptionService) PublicChangeSubscriptionBillingAccount(input *subscription.PublicChangeSubscriptionBillingAccountParams) (*platformclientmodels.SubscriptionInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := s.Client.Subscription.PublicChangeSubscriptionBillingAccount(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicCancelSubscriptionShort instead
func (s *SubscriptionService) PublicCancelSubscription(input *subscription.PublicCancelSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := s.Client.Subscription.PublicCancelSubscription(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use PublicGetUserSubscriptionBillingHistoriesShort instead
func (s *SubscriptionService) PublicGetUserSubscriptionBillingHistories(input *subscription.PublicGetUserSubscriptionBillingHistoriesParams) (*platformclientmodels.BillingHistoryPagingSlicedResult, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.PublicGetUserSubscriptionBillingHistories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) QuerySubscriptionsShort(input *subscription.QuerySubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.QuerySubscriptionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) RecurringChargeSubscriptionShort(input *subscription.RecurringChargeSubscriptionParams) (*platformclientmodels.RecurringChargeResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.RecurringChargeSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) QueryUserSubscriptionsShort(input *subscription.QueryUserSubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.QueryUserSubscriptionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) GetUserSubscriptionActivitiesShort(input *subscription.GetUserSubscriptionActivitiesParams) (*platformclientmodels.SubscriptionActivityPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.GetUserSubscriptionActivitiesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) PlatformSubscribeSubscriptionShort(input *subscription.PlatformSubscribeSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.PlatformSubscribeSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) CheckUserSubscriptionSubscribableByItemIDShort(input *subscription.CheckUserSubscriptionSubscribableByItemIDParams) (*platformclientmodels.Subscribable, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.CheckUserSubscriptionSubscribableByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) GetUserSubscriptionShort(input *subscription.GetUserSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.GetUserSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) DeleteUserSubscriptionShort(input *subscription.DeleteUserSubscriptionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	_, err := s.Client.Subscription.DeleteUserSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (s *SubscriptionService) CancelSubscriptionShort(input *subscription.CancelSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.CancelSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) GrantDaysToSubscriptionShort(input *subscription.GrantDaysToSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.GrantDaysToSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) GetUserSubscriptionBillingHistoriesShort(input *subscription.GetUserSubscriptionBillingHistoriesParams) (*platformclientmodels.BillingHistoryPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.GetUserSubscriptionBillingHistoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) ProcessUserSubscriptionNotificationShort(input *subscription.ProcessUserSubscriptionNotificationParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	_, err := s.Client.Subscription.ProcessUserSubscriptionNotificationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (s *SubscriptionService) PublicQueryUserSubscriptionsShort(input *subscription.PublicQueryUserSubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.PublicQueryUserSubscriptionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) PublicSubscribeSubscriptionShort(input *subscription.PublicSubscribeSubscriptionParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	_, err := s.Client.Subscription.PublicSubscribeSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (s *SubscriptionService) PublicCheckUserSubscriptionSubscribableByItemIDShort(input *subscription.PublicCheckUserSubscriptionSubscribableByItemIDParams) (*platformclientmodels.Subscribable, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.PublicCheckUserSubscriptionSubscribableByItemIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) PublicGetUserSubscriptionShort(input *subscription.PublicGetUserSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.PublicGetUserSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) PublicChangeSubscriptionBillingAccountShort(input *subscription.PublicChangeSubscriptionBillingAccountParams) (*platformclientmodels.SubscriptionInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.PublicChangeSubscriptionBillingAccountShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) PublicCancelSubscriptionShort(input *subscription.PublicCancelSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.PublicCancelSubscriptionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SubscriptionService) PublicGetUserSubscriptionBillingHistoriesShort(input *subscription.PublicGetUserSubscriptionBillingHistoriesParams) (*platformclientmodels.BillingHistoryPagingSlicedResult, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(s.TokenRepository, nil, security, "")
	}
	ok, err := s.Client.Subscription.PublicGetUserSubscriptionBillingHistoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

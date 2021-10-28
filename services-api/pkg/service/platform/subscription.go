package platform

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type SubscriptionService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (s SubscriptionService) CancelSubscription(input *subscription.CancelSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := s.Client.Subscription.CancelSubscription(input, client.BearerToken(*accessToken.AccessToken))
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
	return ok.GetPayload(), err
}

func (s SubscriptionService) CheckUserSubscriptionSubscribableByItemID(input *subscription.CheckUserSubscriptionSubscribableByItemIDParams) (*platformclientmodels.Subscribable, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.CheckUserSubscriptionSubscribableByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (s SubscriptionService) DeleteUserSubscription(input *subscription.DeleteUserSubscriptionParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.Subscription.DeleteUserSubscription(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s SubscriptionService) GetUserSubscription(input *subscription.GetUserSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Subscription.GetUserSubscription(input, client.BearerToken(*accessToken.AccessToken))
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

func (s SubscriptionService) GetUserSubscriptionActivities(input *subscription.GetUserSubscriptionActivitiesParams) (*platformclientmodels.SubscriptionActivityPagingSlicedResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.GetUserSubscriptionActivities(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (s SubscriptionService) GetUserSubscriptionBillingHistories(input *subscription.GetUserSubscriptionBillingHistoriesParams) (*platformclientmodels.BillingHistoryPagingSlicedResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.GetUserSubscriptionBillingHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (s SubscriptionService) GrantDaysToSubscription(input *subscription.GrantDaysToSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Subscription.GrantDaysToSubscription(input, client.BearerToken(*accessToken.AccessToken))
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

func (s SubscriptionService) PlatformSubscribeSubscription(input *subscription.PlatformSubscribeSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, created, notFound, conflict, unprocessableEntity, err := s.Client.Subscription.PlatformSubscribeSubscription(input, client.BearerToken(*accessToken.AccessToken))
	if created != nil {
		errorMsg, _ := json.Marshal(created.Error())
		logrus.Error(string(errorMsg))
		return nil, created
	}
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
	return ok.GetPayload(), nil
}

func (s SubscriptionService) ProcessUserSubscriptionNotification(input *subscription.ProcessUserSubscriptionNotificationParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := s.Client.Subscription.ProcessUserSubscriptionNotification(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(badRequest.Error())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s SubscriptionService) PublicCancelSubscription(input *subscription.PublicCancelSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := s.Client.Subscription.PublicCancelSubscription(input, client.BearerToken(*accessToken.AccessToken))
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
	return ok.GetPayload(), nil
}

func (s SubscriptionService) PublicChangeSubscriptionBillingAccount(input *subscription.PublicChangeSubscriptionBillingAccountParams) (*platformclientmodels.SubscriptionInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := s.Client.Subscription.PublicChangeSubscriptionBillingAccount(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	return ok.GetPayload(), nil
}

func (s SubscriptionService) PublicCheckUserSubscriptionSubscribableByItemID(input *subscription.PublicCheckUserSubscriptionSubscribableByItemIDParams) (*platformclientmodels.Subscribable, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.PublicCheckUserSubscriptionSubscribableByItemID(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (s SubscriptionService) PublicGetUserSubscription(input *subscription.PublicGetUserSubscriptionParams) (*platformclientmodels.SubscriptionInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := s.Client.Subscription.PublicGetUserSubscription(input, client.BearerToken(*accessToken.AccessToken))
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

func (s SubscriptionService) PublicGetUserSubscriptionBillingHistories(input *subscription.PublicGetUserSubscriptionBillingHistoriesParams) (*platformclientmodels.BillingHistoryPagingSlicedResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.PublicGetUserSubscriptionBillingHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s SubscriptionService) PublicQueryUserSubscriptions(input *subscription.PublicQueryUserSubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.PublicQueryUserSubscriptions(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s SubscriptionService) PublicSubscribeSubscription(input *subscription.PublicSubscribeSubscriptionParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := s.Client.Subscription.PublicSubscribeSubscription(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
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
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s SubscriptionService) QuerySubscriptions(input *subscription.QuerySubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.QuerySubscriptions(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s SubscriptionService) QueryUserSubscriptions(input *subscription.QueryUserSubscriptionsParams) (*platformclientmodels.SubscriptionPagingSlicedResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.QueryUserSubscriptions(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s SubscriptionService) RecurringChargeSubscription(input *subscription.RecurringChargeSubscriptionParams) (*platformclientmodels.RecurringChargeResult, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.Subscription.RecurringChargeSubscription(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

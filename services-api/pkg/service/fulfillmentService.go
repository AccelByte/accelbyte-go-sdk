package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type FulfillmentService struct {
	PlatformService *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (fulfillmentService *FulfillmentService) QueryFulfillmentHistories(namespace string, userId, status *string, limit, offset *int32) (*platformclientmodels.FulfillmentHistoryPagingSlicedResult, error) {
	accessToken, err := fulfillmentService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &fulfillment.QueryFulfillmentHistoriesParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		Status:    status,
		UserID:    userId,
	}
	fulfillmentHistories, err := fulfillmentService.PlatformService.Fulfillment.QueryFulfillmentHistories(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return fulfillmentHistories.GetPayload(), nil
}

func (fulfillmentService *FulfillmentService) FulfillItem(userId, userNamespace string, fulfillmentRequest platformclientmodels.FulfillmentRequest) (*platformclientmodels.FulfillmentResult, error) {
	accessToken, err := fulfillmentService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &fulfillment.FulfillItemParams{
		Body:      &fulfillmentRequest,
		Namespace: userNamespace,
		UserID:    userId,
	}
	fulfillItem, badRequest, notFound, conflict, err := fulfillmentService.PlatformService.Fulfillment.FulfillItem(param, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
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
	return fulfillItem.GetPayload(), nil
}

package platform

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
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (f *FulfillmentService) QueryFulfillmentHistories(input *fulfillment.QueryFulfillmentHistoriesParams) (*platformclientmodels.FulfillmentHistoryPagingSlicedResult, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	fulfillmentHistories, err := f.Client.Fulfillment.QueryFulfillmentHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return fulfillmentHistories.GetPayload(), nil
}

func (f *FulfillmentService) FulfillItem(input *fulfillment.FulfillItemParams) (*platformclientmodels.FulfillmentResult, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	fulfillItem, badRequest, notFound, conflict, err := f.Client.Fulfillment.FulfillItem(input, client.BearerToken(*accessToken.AccessToken))
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

func (f *FulfillmentService) PublicRedeemCode(input *fulfillment.PublicRedeemCodeParams) (*platformclientmodels.FulfillmentResult, error) {
	accessToken, err := f.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := f.Client.Fulfillment.PublicRedeemCode(input, client.BearerToken(*accessToken.AccessToken))
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
	return ok.GetPayload(), nil
}

package platform

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type OrderService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (o *OrderService) GetOrderStatistics(input *order.GetOrderStatisticsParams) (*platformclientmodels.OrderStatistics, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetOrderStatistics(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) RefundOrder(input *order.RefundOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := o.Client.Order.RefundOrder(input, client.BearerToken(*accessToken.AccessToken))
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
	return ok.GetPayload(), err
}

func (o *OrderService) QueryOrders(input *order.QueryOrdersParams) (*platformclientmodels.OrderPagingResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := o.Client.Order.QueryOrders(input, client.BearerToken(*accessToken.AccessToken))

	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) GetOrder(input *order.GetOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := o.Client.Order.GetOrder(input, client.BearerToken(*accessToken.AccessToken))

	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) DownloadUserOrderReceipt(input *order.DownloadUserOrderReceiptParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	notFound, conflict, err := o.Client.Order.DownloadUserOrderReceipt(input, client.BearerToken(*accessToken.AccessToken))
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
	return err
}

func (o *OrderService) GetUserOrderHistories(input *order.GetUserOrderHistoriesParams) ([]*platformclientmodels.OrderHistoryInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetUserOrderHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) QueryUserOrders(input *order.QueryUserOrdersParams) (*platformclientmodels.OrderPagingSlicedResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.QueryUserOrders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) CountOfPurchasedItem(input *order.CountOfPurchasedItemParams) (*platformclientmodels.PurchasedItemCount, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.CountOfPurchasedItem(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) GetUserOrder(input *order.GetUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := o.Client.Order.GetUserOrder(input, client.BearerToken(*accessToken.AccessToken))
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

func (o *OrderService) UpdateUserOrderStatus(input *order.UpdateUserOrderStatusParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := o.Client.Order.UpdateUserOrderStatus(input, client.BearerToken(*accessToken.AccessToken))
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
	return ok.GetPayload(), err
}

func (o *OrderService) FulfillUserOrder(input *order.FulfillUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := o.Client.Order.FulfillUserOrder(input, client.BearerToken(*accessToken.AccessToken))
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
	return ok.GetPayload(), err
}

func (o *OrderService) ProcessUserOrderNotification(input *order.ProcessUserOrderNotificationParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := o.Client.Order.ProcessUserOrderNotification(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		logrus.Error(badRequest)
		return badRequest
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return err
}

func (o *OrderService) GetUserOrderGrant(input *order.GetUserOrderGrantParams) (*platformclientmodels.OrderGrantInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetUserOrderGrant(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) PublicQueryUserOrders(input *order.PublicQueryUserOrdersParams) (*platformclientmodels.OrderPagingSlicedResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.PublicQueryUserOrders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) PublicCreateUserOrder(input *order.PublicCreateUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := o.Client.Order.PublicCreateUserOrder(input, client.BearerToken(*accessToken.AccessToken))
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
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
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), err
}

func (o *OrderService) PublicGetUserOrder(input *order.PublicGetUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := o.Client.Order.PublicGetUserOrder(input, client.BearerToken(*accessToken.AccessToken))
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

func (o *OrderService) PublicDownloadUserOrderReceipt(input *order.PublicDownloadUserOrderReceiptParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	notFound, conflict, err := o.Client.Order.PublicDownloadUserOrderReceipt(input, client.BearerToken(*accessToken.AccessToken))
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
	return err
}

func (o *OrderService) PublicCancelUserOrder(input *order.PublicCancelUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := o.Client.Order.PublicCancelUserOrder(input, client.BearerToken(*accessToken.AccessToken))
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

func (o *OrderService) PublicGetUserOrderHistories(input *order.PublicGetUserOrderHistoriesParams) ([]*platformclientmodels.OrderHistoryInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.PublicGetUserOrderHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

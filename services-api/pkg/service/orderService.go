package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type OrderService struct {
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (o *OrderService) GetOrderStatistics(namespace string) (*platformclientmodels.OrderStatistics, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.GetOrderStatisticsParams{
		Namespace: namespace,
	}
	ok, err := o.PlatformServiceClient.Order.GetOrderStatistics(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) RefundOrder(namespace, orderNo string, content *platformclientmodels.OrderRefundCreate) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.RefundOrderParams{
		Body:      content,
		Namespace: namespace,
		OrderNo:   orderNo,
	}
	ok, notFound, conflict, unprocessableEntity, err := o.PlatformServiceClient.Order.RefundOrder(params, client.BearerToken(*accessToken.AccessToken))
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

func (o *OrderService) QueryOrders(namespace string, sort, status, startTime, endTime *string, orderNos []string, withTotal *bool, limit, offset *int32) (*platformclientmodels.OrderPagingResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.QueryOrdersParams{
		EndTime:   endTime,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		OrderNos:  orderNos,
		SortBy:    sort,
		StartTime: startTime,
		Status:    status,
		WithTotal: withTotal,
	}
	ok, unprocessableEntity, err := o.PlatformServiceClient.Order.QueryOrders(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) GetOrder(namespace, orderNo string) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.GetOrderParams{
		Namespace: namespace,
		OrderNo:   orderNo,
	}
	ok, unprocessableEntity, err := o.PlatformServiceClient.Order.GetOrder(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) DownloadUserOrderReceipt(namespace, orderNo, userId string) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}

	params := &order.DownloadUserOrderReceiptParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	notFound, conflict, err := o.PlatformServiceClient.Order.DownloadUserOrderReceipt(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) GetUserOrderHistories(namespace, userId, orderNo string) ([]*platformclientmodels.OrderHistoryInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.GetUserOrderHistoriesParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	ok, err := o.PlatformServiceClient.Order.GetUserOrderHistories(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) QueryUserOrders(namespace, userId string, itemId, status *string, limit, offset *int32) (*platformclientmodels.OrderPagingSlicedResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.QueryUserOrdersParams{
		ItemID:    itemId,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		Status:    status,
		UserID:    userId,
	}
	ok, err := o.PlatformServiceClient.Order.QueryUserOrders(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) CountOfPurchasedItem(namespace, userId, itemId string) (*platformclientmodels.PurchasedItemCount, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.CountOfPurchasedItemParams{
		ItemID:    itemId,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, err := o.PlatformServiceClient.Order.CountOfPurchasedItem(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) GetUserOrder(namespace, userId, orderNo string) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.GetUserOrderParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	ok, notFound, err := o.PlatformServiceClient.Order.GetUserOrder(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) UpdateUserOrderStatus(namespace, userId, orderNo string, content *platformclientmodels.OrderUpdate) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.UpdateUserOrderStatusParams{
		Body:      content,
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	ok, notFound, conflict, unprocessableEntity, err := o.PlatformServiceClient.Order.UpdateUserOrderStatus(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) FulfillUserOrder(namespace, userId, orderNo string) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.FulfillUserOrderParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	ok, notFound, conflict, unprocessableEntity, err := o.PlatformServiceClient.Order.FulfillUserOrder(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) ProcessUserOrderNotification(namespace, userId, orderNo string, content *platformclientmodels.TradeNotification) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}

	params := &order.ProcessUserOrderNotificationParams{
		Body:      content,
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	_, badRequest, err := o.PlatformServiceClient.Order.ProcessUserOrderNotification(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) GetUserOrderGrant(namespace, userId, orderNo string) (*platformclientmodels.OrderGrantInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.GetUserOrderGrantParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	ok, err := o.PlatformServiceClient.Order.GetUserOrderGrant(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) PublicQueryUserOrders(namespace, userId string, itemId, status *string, limit, offset *int32) (*platformclientmodels.OrderPagingSlicedResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.PublicQueryUserOrdersParams{
		ItemID:    itemId,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		Status:    status,
		UserID:    userId,
	}
	ok, err := o.PlatformServiceClient.Order.PublicQueryUserOrders(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}
func (o *OrderService) PublicCreateUserOrder(namespace, userId string, content *platformclientmodels.OrderCreate) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.PublicCreateUserOrderParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	created, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := o.PlatformServiceClient.Order.PublicCreateUserOrder(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) PublicGetUserOrder(namespace, userId, orderNo string) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.PublicGetUserOrderParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	ok, notFound, err := o.PlatformServiceClient.Order.PublicGetUserOrder(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) PublicDownloadUserOrderReceipt(namespace, orderNo, userId string) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}

	params := &order.PublicDownloadUserOrderReceiptParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	notFound, conflict, err := o.PlatformServiceClient.Order.PublicDownloadUserOrderReceipt(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) PublicCancelUserOrder(namespace, orderNo, userId string) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.PublicCancelUserOrderParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	ok, notFound, conflict, err := o.PlatformServiceClient.Order.PublicCancelUserOrder(params, client.BearerToken(*accessToken.AccessToken))

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

func (o *OrderService) PublicGetUserOrderHistories(namespace, orderNo, userId string) ([]*platformclientmodels.OrderHistoryInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order.PublicGetUserOrderHistoriesParams{
		Namespace: namespace,
		OrderNo:   orderNo,
		UserID:    userId,
	}
	ok, err := o.PlatformServiceClient.Order.PublicGetUserOrderHistories(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

func (o *OrderService) SyncOrders(start, end string, nextEvaluatedKey *string) (*platformclientmodels.OrderSyncResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}

	params := &order_dedicated.SyncOrdersParams{
		End:              start,
		NextEvaluatedKey: nextEvaluatedKey,
		Start:            end,
	}
	ok, err := o.PlatformServiceClient.OrderDedicated.SyncOrders(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), err
}

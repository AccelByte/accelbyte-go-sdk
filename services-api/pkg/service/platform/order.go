// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type OrderService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryOrdersShort instead
func (o *OrderService) QueryOrders(input *order.QueryOrdersParams) (*platformclientmodels.OrderPagingResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := o.Client.Order.QueryOrders(input, client.BearerToken(*accessToken.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetOrderStatisticsShort instead
func (o *OrderService) GetOrderStatistics(input *order.GetOrderStatisticsParams) (*platformclientmodels.OrderStatistics, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetOrderStatistics(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetOrderShort instead
func (o *OrderService) GetOrder(input *order.GetOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := o.Client.Order.GetOrder(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use RefundOrderShort instead
func (o *OrderService) RefundOrder(input *order.RefundOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := o.Client.Order.RefundOrder(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use QueryUserOrdersShort instead
func (o *OrderService) QueryUserOrders(input *order.QueryUserOrdersParams) (*platformclientmodels.OrderPagingSlicedResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.QueryUserOrders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use CountOfPurchasedItemShort instead
func (o *OrderService) CountOfPurchasedItem(input *order.CountOfPurchasedItemParams) (*platformclientmodels.PurchasedItemCount, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.CountOfPurchasedItem(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserOrderShort instead
func (o *OrderService) GetUserOrder(input *order.GetUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := o.Client.Order.GetUserOrder(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateUserOrderStatusShort instead
func (o *OrderService) UpdateUserOrderStatus(input *order.UpdateUserOrderStatusParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := o.Client.Order.UpdateUserOrderStatus(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use FulfillUserOrderShort instead
func (o *OrderService) FulfillUserOrder(input *order.FulfillUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := o.Client.Order.FulfillUserOrder(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use GetUserOrderGrantShort instead
func (o *OrderService) GetUserOrderGrant(input *order.GetUserOrderGrantParams) (*platformclientmodels.OrderGrantInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetUserOrderGrant(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserOrderHistoriesShort instead
func (o *OrderService) GetUserOrderHistories(input *order.GetUserOrderHistoriesParams) ([]*platformclientmodels.OrderHistoryInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetUserOrderHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use ProcessUserOrderNotificationShort instead
func (o *OrderService) ProcessUserOrderNotification(input *order.ProcessUserOrderNotificationParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := o.Client.Order.ProcessUserOrderNotification(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use DownloadUserOrderReceiptShort instead
func (o *OrderService) DownloadUserOrderReceipt(input *order.DownloadUserOrderReceiptParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := o.Client.Order.DownloadUserOrderReceipt(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use PublicQueryUserOrdersShort instead
func (o *OrderService) PublicQueryUserOrders(input *order.PublicQueryUserOrdersParams) (*platformclientmodels.OrderPagingSlicedResult, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.PublicQueryUserOrders(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicCreateUserOrderShort instead
func (o *OrderService) PublicCreateUserOrder(input *order.PublicCreateUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := o.Client.Order.PublicCreateUserOrder(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

// Deprecated: Use PublicGetUserOrderShort instead
func (o *OrderService) PublicGetUserOrder(input *order.PublicGetUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := o.Client.Order.PublicGetUserOrder(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicCancelUserOrderShort instead
func (o *OrderService) PublicCancelUserOrder(input *order.PublicCancelUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := o.Client.Order.PublicCancelUserOrder(input, client.BearerToken(*accessToken.AccessToken))
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

// Deprecated: Use PublicGetUserOrderHistoriesShort instead
func (o *OrderService) PublicGetUserOrderHistories(input *order.PublicGetUserOrderHistoriesParams) ([]*platformclientmodels.OrderHistoryInfo, error) {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.PublicGetUserOrderHistories(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use PublicDownloadUserOrderReceiptShort instead
func (o *OrderService) PublicDownloadUserOrderReceipt(input *order.PublicDownloadUserOrderReceiptParams) error {
	accessToken, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := o.Client.Order.PublicDownloadUserOrderReceipt(input, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		return notFound
	}
	if conflict != nil {
		return conflict
	}
	if err != nil {
		return err
	}
	return nil
}

func (o *OrderService) QueryOrdersShort(input *order.QueryOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderPagingResult, error) {
	ok, err := o.Client.Order.QueryOrdersShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) GetOrderStatisticsShort(input *order.GetOrderStatisticsParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderStatistics, error) {
	ok, err := o.Client.Order.GetOrderStatisticsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) GetOrderShort(input *order.GetOrderParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	ok, err := o.Client.Order.GetOrderShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) RefundOrderShort(input *order.RefundOrderParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	ok, err := o.Client.Order.RefundOrderShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) QueryUserOrdersShort(input *order.QueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderPagingSlicedResult, error) {
	ok, err := o.Client.Order.QueryUserOrdersShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) CountOfPurchasedItemShort(input *order.CountOfPurchasedItemParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.PurchasedItemCount, error) {
	ok, err := o.Client.Order.CountOfPurchasedItemShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) GetUserOrderShort(input *order.GetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	ok, err := o.Client.Order.GetUserOrderShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) UpdateUserOrderStatusShort(input *order.UpdateUserOrderStatusParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	ok, err := o.Client.Order.UpdateUserOrderStatusShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) FulfillUserOrderShort(input *order.FulfillUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	ok, err := o.Client.Order.FulfillUserOrderShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) GetUserOrderGrantShort(input *order.GetUserOrderGrantParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderGrantInfo, error) {
	ok, err := o.Client.Order.GetUserOrderGrantShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) GetUserOrderHistoriesShort(input *order.GetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) ([]*platformclientmodels.OrderHistoryInfo, error) {
	ok, err := o.Client.Order.GetUserOrderHistoriesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) ProcessUserOrderNotificationShort(input *order.ProcessUserOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.Order.ProcessUserOrderNotificationShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OrderService) DownloadUserOrderReceiptShort(input *order.DownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.Order.DownloadUserOrderReceiptShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

func (o *OrderService) PublicQueryUserOrdersShort(input *order.PublicQueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderPagingSlicedResult, error) {
	ok, err := o.Client.Order.PublicQueryUserOrdersShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) PublicCreateUserOrderShort(input *order.PublicCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	created, err := o.Client.Order.PublicCreateUserOrderShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (o *OrderService) PublicGetUserOrderShort(input *order.PublicGetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	ok, err := o.Client.Order.PublicGetUserOrderShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) PublicCancelUserOrderShort(input *order.PublicCancelUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	ok, err := o.Client.Order.PublicCancelUserOrderShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) PublicGetUserOrderHistoriesShort(input *order.PublicGetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) ([]*platformclientmodels.OrderHistoryInfo, error) {
	ok, err := o.Client.Order.PublicGetUserOrderHistoriesShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (o *OrderService) PublicDownloadUserOrderReceiptShort(input *order.PublicDownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter) error {
	_, err := o.Client.Order.PublicDownloadUserOrderReceiptShort(input, authInfo)
	if err != nil {
		return err
	}
	return nil
}

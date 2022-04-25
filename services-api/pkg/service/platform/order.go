// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type OrderService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use QueryOrdersShort instead
func (o *OrderService) QueryOrders(input *order.QueryOrdersParams) (*platformclientmodels.OrderPagingResult, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := o.Client.Order.QueryOrders(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetOrderStatistics(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetOrderShort instead
func (o *OrderService) GetOrder(input *order.GetOrderParams) (*platformclientmodels.OrderInfo, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := o.Client.Order.GetOrder(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := o.Client.Order.RefundOrder(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.QueryUserOrders(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CountOfPurchasedItemShort instead
func (o *OrderService) CountOfPurchasedItem(input *order.CountOfPurchasedItemParams) (*platformclientmodels.PurchasedItemCount, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.CountOfPurchasedItem(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserOrderShort instead
func (o *OrderService) GetUserOrder(input *order.GetUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := o.Client.Order.GetUserOrder(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, unprocessableEntity, err := o.Client.Order.UpdateUserOrderStatus(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, err := o.Client.Order.FulfillUserOrder(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetUserOrderGrant(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserOrderHistoriesShort instead
func (o *OrderService) GetUserOrderHistories(input *order.GetUserOrderHistoriesParams) ([]*platformclientmodels.OrderHistoryInfo, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.GetUserOrderHistories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ProcessUserOrderNotificationShort instead
func (o *OrderService) ProcessUserOrderNotification(input *order.ProcessUserOrderNotificationParams) error {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, err := o.Client.Order.ProcessUserOrderNotification(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := o.Client.Order.DownloadUserOrderReceipt(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.PublicQueryUserOrders(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicCreateUserOrderShort instead
func (o *OrderService) PublicCreateUserOrder(input *order.PublicCreateUserOrderParams) (*platformclientmodels.OrderInfo, error) {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := o.Client.Order.PublicCreateUserOrder(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := o.Client.Order.PublicGetUserOrder(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := o.Client.Order.PublicCancelUserOrder(input, client.BearerToken(*token.AccessToken))
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
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := o.Client.Order.PublicGetUserOrderHistories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicDownloadUserOrderReceiptShort instead
func (o *OrderService) PublicDownloadUserOrderReceipt(input *order.PublicDownloadUserOrderReceiptParams) error {
	token, err := o.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, notFound, conflict, err := o.Client.Order.PublicDownloadUserOrderReceipt(input, client.BearerToken(*token.AccessToken))
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

func (o *OrderService) QueryOrdersShort(input *order.QueryOrdersParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderPagingResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.QueryOrdersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) GetOrderStatisticsShort(input *order.GetOrderStatisticsParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderStatistics, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.GetOrderStatisticsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) GetOrderShort(input *order.GetOrderParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.GetOrderShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) RefundOrderShort(input *order.RefundOrderParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.RefundOrderShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) QueryUserOrdersShort(input *order.QueryUserOrdersParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.QueryUserOrdersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) CountOfPurchasedItemShort(input *order.CountOfPurchasedItemParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.PurchasedItemCount, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.CountOfPurchasedItemShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) GetUserOrderShort(input *order.GetUserOrderParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.GetUserOrderShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) UpdateUserOrderStatusShort(input *order.UpdateUserOrderStatusParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.UpdateUserOrderStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) FulfillUserOrderShort(input *order.FulfillUserOrderParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.FulfillUserOrderShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) GetUserOrderGrantShort(input *order.GetUserOrderGrantParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderGrantInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.GetUserOrderGrantShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) GetUserOrderHistoriesShort(input *order.GetUserOrderHistoriesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.OrderHistoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.GetUserOrderHistoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) ProcessUserOrderNotificationShort(input *order.ProcessUserOrderNotificationParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	_, err := o.Client.Order.ProcessUserOrderNotificationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (o *OrderService) DownloadUserOrderReceiptShort(input *order.DownloadUserOrderReceiptParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	_, err := o.Client.Order.DownloadUserOrderReceiptShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (o *OrderService) PublicQueryUserOrdersShort(input *order.PublicQueryUserOrdersParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderPagingSlicedResult, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.PublicQueryUserOrdersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) PublicCreateUserOrderShort(input *order.PublicCreateUserOrderParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	created, err := o.Client.Order.PublicCreateUserOrderShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (o *OrderService) PublicGetUserOrderShort(input *order.PublicGetUserOrderParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.PublicGetUserOrderShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) PublicCancelUserOrderShort(input *order.PublicCancelUserOrderParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.OrderInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.PublicCancelUserOrderShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) PublicGetUserOrderHistoriesShort(input *order.PublicGetUserOrderHistoriesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.OrderHistoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	ok, err := o.Client.Order.PublicGetUserOrderHistoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (o *OrderService) PublicDownloadUserOrderReceiptShort(input *order.PublicDownloadUserOrderReceiptParams, authInfoWriter runtime.ClientAuthInfoWriter) error {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(o.TokenRepository, nil, security, "")
	}
	_, err := o.Client.Order.PublicDownloadUserOrderReceiptShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

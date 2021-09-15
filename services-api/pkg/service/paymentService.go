package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PaymentService struct {
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (p *PaymentService) QueryPaymentNotification(namespace string, paymentOrderNo, status, externalId, notificationType, notificationSource, startDate, endDate *string, limit, offset *int32) (*platformclientmodels.PaymentNotificationPagingSlicedResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment.QueryPaymentNotificationsParams{
		EndDate:            endDate,
		ExternalID:         externalId,
		Limit:              limit,
		Namespace:          namespace,
		NotificationSource: notificationSource,
		NotificationType:   notificationType,
		Offset:             offset,
		PaymentOrderNo:     paymentOrderNo,
		StartDate:          startDate,
		Status:             status,
	}
	ok, err := p.PlatformServiceClient.Payment.QueryPaymentNotifications(params, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentService) GetPaymentOrder(namespace, paymentOrderNo string) (*platformclientmodels.PaymentOrderInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment.GetPaymentOrderParams{
		Namespace:      namespace,
		PaymentOrderNo: paymentOrderNo,
	}
	ok, notFound, err := p.PlatformServiceClient.Payment.GetPaymentOrder(params, client.BearerToken(*accessToken.AccessToken))
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

func (p *PaymentService) ChargePaymentOrder(namespace, paymentOrderNo string) (*platformclientmodels.PaymentOrderInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment.ChargePaymentOrderParams{
		Namespace:      namespace,
		PaymentOrderNo: paymentOrderNo,
	}
	ok, badRequest, notFound, conflict, err := p.PlatformServiceClient.Payment.ChargePaymentOrder(params, client.BearerToken(*accessToken.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
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

func (p *PaymentService) ListExtOrderNoByExtTxID(namespace, extTxId string) ([]string, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment.ListExtOrderNoByExtTxIDParams{
		ExtTxID:   extTxId,
		Namespace: namespace,
	}
	ok, err := p.PlatformServiceClient.Payment.ListExtOrderNoByExtTxID(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentService) GetPaymentOrderChargeStatus(namespace, paymentOrderNo string) (*platformclientmodels.PaymentOrderChargeStatus, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment.GetPaymentOrderChargeStatusParams{
		Namespace:      namespace,
		PaymentOrderNo: paymentOrderNo,
	}
	ok, notFound, err := p.PlatformServiceClient.Payment.GetPaymentOrderChargeStatus(params, client.BearerToken(*accessToken.AccessToken))

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

func (p *PaymentService) QueryPaymentOrders(namespace string, channel, extTxId, status *string, limit, offset *int32) (*platformclientmodels.PaymentOrderPagingSlicedResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment.QueryPaymentOrdersParams{
		Channel:   channel,
		ExtTxID:   extTxId,
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
		Status:    status,
	}
	ok, err := p.PlatformServiceClient.Payment.QueryPaymentOrders(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentService) CreateUserPaymentOrder(namespace, userId string, content *platformclientmodels.PaymentOrderCreate) (*platformclientmodels.PaymentOrderInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment.CreateUserPaymentOrderParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	created, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := p.PlatformServiceClient.Payment.CreateUserPaymentOrder(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
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
	return created.GetPayload(), nil
}

func (p *PaymentService) RefundUserPaymentOrder(namespace, userId, paymentOrderNo string, content *platformclientmodels.PaymentOrderRefund) (*platformclientmodels.PaymentOrderInfo, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment.RefundUserPaymentOrderParams{
		Body:           content,
		Namespace:      namespace,
		PaymentOrderNo: paymentOrderNo,
		UserID:         userId,
	}
	ok, notFound, orderConflict, unprocessableEntity, err := p.PlatformServiceClient.Payment.RefundUserPaymentOrder(params, client.BearerToken(*accessToken.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if orderConflict != nil {
		errorMsg, _ := json.Marshal(*orderConflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, orderConflict
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

func (p *PaymentService) CreatePaymentOrderByDedicated(namespace string, content *platformclientmodels.ExternalPaymentOrderCreate) (*platformclientmodels.PaymentOrderCreateResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_dedicated.CreatePaymentOrderByDedicatedParams{
		Body:      content,
		Namespace: namespace,
	}
	created, badRequest, forbidden, notFound, conflict, unprocessableEntity, err := p.PlatformServiceClient.PaymentDedicated.CreatePaymentOrderByDedicated(params, client.BearerToken(*accessToken.AccessToken))

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
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

func (p *PaymentService) SyncPaymentOrders(startDate, endDate string, nextEvaluatedKey *string) (*platformclientmodels.PaymentOrderSyncResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_dedicated.SyncPaymentOrdersParams{
		End:              endDate,
		NextEvaluatedKey: nextEvaluatedKey,
		Start:            startDate,
	}
	ok, err := p.PlatformServiceClient.PaymentDedicated.SyncPaymentOrders(params, client.BearerToken(*accessToken.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentService) RefundPaymentOrderByDedicated(namespace, paymentOrderNo string, content *platformclientmodels.PaymentOrderRefund) (*platformclientmodels.PaymentOrderRefundResult, error) {
	accessToken, err := p.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &payment_dedicated.RefundPaymentOrderByDedicatedParams{
		Body:           content,
		Namespace:      namespace,
		PaymentOrderNo: paymentOrderNo,
	}
	ok, noContent, notFound, conflict, unprocessableEntity, err := p.PlatformServiceClient.PaymentDedicated.RefundPaymentOrderByDedicated(params, client.BearerToken(*accessToken.AccessToken))

	if noContent != nil {
		logrus.Error(noContent)
		return nil, noContent
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
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

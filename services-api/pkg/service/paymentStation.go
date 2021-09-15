package service

import (
	"encoding/json"
	"io"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/sirupsen/logrus"
)

type PaymentStation struct {
	PlatformServiceClient *platformclient.JusticePlatformService
	TokenRepository       repository.TokenRepository
}

func (p *PaymentStation) PublicCheckPaymentOrderPaidStatus(namespace, paymentOrderNo string) (*platformclientmodels.PaymentOrderPaidResult, error) {
	params := &payment_station.PublicCheckPaymentOrderPaidStatusParams{
		Namespace:      namespace,
		PaymentOrderNo: paymentOrderNo,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentStation.PublicCheckPaymentOrderPaidStatus(params)
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

func (p *PaymentStation) GetPaymentTaxValue(namespace, paymentOrderNo, paymentProvider string, zipCode *string) (*platformclientmodels.TaxResult, error) {
	params := &payment_station.GetPaymentTaxValueParams{
		Namespace:       namespace,
		PaymentOrderNo:  paymentOrderNo,
		PaymentProvider: paymentProvider,
		ZipCode:         zipCode,
	}
	ok, badRequest, notFound, err := p.PlatformServiceClient.PaymentStation.GetPaymentTaxValue(params)
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
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentStation) Pay(namespace, paymentOrderNo string, paymentProvider, zipCode *string) (*platformclientmodels.PaymentProcessResult, error) {
	params := &payment_station.PayParams{
		Namespace:       namespace,
		PaymentOrderNo:  paymentOrderNo,
		PaymentProvider: paymentProvider,
		ZipCode:         zipCode,
	}
	ok, badRequest, notFound, conflict, err := p.PlatformServiceClient.PaymentStation.Pay(params)
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

func (p *PaymentStation) GetPaymentPublicConfig(namespace, paymentProvider string) (map[string]interface{}, error) {
	params := &payment_station.GetPaymentPublicConfigParams{
		Namespace:       namespace,
		PaymentProvider: paymentProvider,
	}
	ok, err := p.PlatformServiceClient.PaymentStation.GetPaymentPublicConfig(params)

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentStation) PublicNormalizePaymentReturnURL(namespace, paymentProvider, orderNo, paymentOrderNo, returnUrl string,
	payerId, foreignInvoice, invoiceId, resultCode, status, token, paymentType, userId, payload *string) error {
	params := &payment_station.PublicNormalizePaymentReturnURLParams{
		PayerID:         payerId,
		Foreinginvoice:  foreignInvoice,
		InvoiceID:       invoiceId,
		Namespace:       namespace,
		OrderNo:         orderNo,
		Payload:         payload,
		PaymentOrderNo:  paymentOrderNo,
		PaymentProvider: paymentProvider,
		ResultCode:      resultCode,
		ReturnURL:       returnUrl,
		Status:          status,
		Token:           token,
		Type:            paymentType,
		UserID:          userId,
	}
	_, err := p.PlatformServiceClient.PaymentStation.PublicNormalizePaymentReturnURL(params)

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (p *PaymentStation) PublicGetPaymentMethods(namespace, paymentOrderNo string) ([]*platformclientmodels.PaymentMethod, error) {
	params := &payment_station.PublicGetPaymentMethodsParams{
		Namespace:      namespace,
		PaymentOrderNo: paymentOrderNo,
	}
	ok, notFound, err := p.PlatformServiceClient.PaymentStation.PublicGetPaymentMethods(params)
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

func (p *PaymentStation) PublicGetUnpaidPaymentOrder(namespace, paymentOrderNo string) (*platformclientmodels.PaymentOrderDetails, error) {
	params := &payment_station.PublicGetUnpaidPaymentOrderParams{
		Namespace:      namespace,
		PaymentOrderNo: paymentOrderNo,
	}
	ok, notFound, conflict, err := p.PlatformServiceClient.PaymentStation.PublicGetUnpaidPaymentOrder(params)
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

func (p *PaymentStation) PublicGetQRCode(namespace, code string, writer io.Writer) (io.Writer, error) {
	params := &payment_station.PublicGetQRCodeParams{
		Code:      code,
		Namespace: namespace,
	}
	ok, err := p.PlatformServiceClient.PaymentStation.PublicGetQRCode(params, writer)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentStation) GetPaymentCustomization(namespace, paymentProvider, region string, sandbox *bool) (*platformclientmodels.Customization, error) {
	params := &payment_station.GetPaymentCustomizationParams{
		Namespace:       namespace,
		PaymentProvider: paymentProvider,
		Region:          region,
		Sandbox:         sandbox,
	}
	ok, err := p.PlatformServiceClient.PaymentStation.GetPaymentCustomization(params)

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentStation) PublicGetPaymentURL(namespace string, content *platformclientmodels.PaymentURLCreate) (*platformclientmodels.PaymentURL, error) {
	params := &payment_station.PublicGetPaymentURLParams{
		Body:      content,
		Namespace: namespace,
	}
	url, badRequest, forbidden, notFound, err := p.PlatformServiceClient.PaymentStation.PublicGetPaymentURL(params)

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
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
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return url.GetPayload(), nil
}

package platform

import (
	"encoding/json"
	"io"
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/sirupsen/logrus"
)

type PaymentStation struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (p *PaymentStation) PublicCheckPaymentOrderPaidStatus(input *payment_station.PublicCheckPaymentOrderPaidStatusParams) (*platformclientmodels.PaymentOrderPaidResult, error) {
	ok, notFound, err := p.Client.PaymentStation.PublicCheckPaymentOrderPaidStatus(input)
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

func (p *PaymentStation) GetPaymentTaxValue(input *payment_station.GetPaymentTaxValueParams) (*platformclientmodels.TaxResult, error) {
	ok, badRequest, notFound, err := p.Client.PaymentStation.GetPaymentTaxValue(input)
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

func (p *PaymentStation) Pay(input *payment_station.PayParams) (*platformclientmodels.PaymentProcessResult, error) {
	ok, badRequest, notFound, conflict, err := p.Client.PaymentStation.Pay(input)
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

func (p *PaymentStation) GetPaymentPublicConfig(input *payment_station.GetPaymentPublicConfigParams) (map[string]interface{}, error) {
	ok, err := p.Client.PaymentStation.GetPaymentPublicConfig(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentStation) PublicNormalizePaymentReturnURL(input *payment_station.PublicNormalizePaymentReturnURLParams) (string, error) {
	httpClient := &http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	newInput := &payment_station.PublicNormalizePaymentReturnURLParams{
		PayerID: input.PayerID,
		Foreinginvoice: input.Foreinginvoice,
		InvoiceID: input.InvoiceID,
		Namespace: input.Namespace,
		OrderNo: input.OrderNo,
		Payload: input.Payload,
		PaymentOrderNo: input.PaymentOrderNo,
		PaymentProvider: input.PaymentProvider,
		ResultCode: input.ResultCode,
		ReturnURL: input.ReturnURL,
		Status: input.Status,
		Token: input.Token,
		Type: input.Type,
		UserID: input.UserID,
		HTTPClient: httpClient,
	}
	_, returnedURL, err := p.Client.PaymentStation.PublicNormalizePaymentReturnURL(newInput)
	if returnedURL != nil{
		logrus.Infof("Successfully operation")
		return returnedURL.Location, nil
	}
	if err != nil {
		logrus.Error(err)
		return "", err
	}
	logrus.Infof("URL is empty")
	return "", nil
}

func (p *PaymentStation) PublicGetPaymentMethods(input *payment_station.PublicGetPaymentMethodsParams) ([]*platformclientmodels.PaymentMethod, error) {
	ok, notFound, err := p.Client.PaymentStation.PublicGetPaymentMethods(input)
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

func (p *PaymentStation) PublicGetUnpaidPaymentOrder(input *payment_station.PublicGetUnpaidPaymentOrderParams) (*platformclientmodels.PaymentOrderDetails, error) {
	ok, notFound, conflict, err := p.Client.PaymentStation.PublicGetUnpaidPaymentOrder(input)
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

func (p *PaymentStation) PublicGetQRCode(input *payment_station.PublicGetQRCodeParams, writer io.Writer) (io.Writer, error) {
	ok, err := p.Client.PaymentStation.PublicGetQRCode(input, writer)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentStation) GetPaymentCustomization(input *payment_station.GetPaymentCustomizationParams) (*platformclientmodels.Customization, error) {
	ok, err := p.Client.PaymentStation.GetPaymentCustomization(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (p *PaymentStation) PublicGetPaymentURL(input *payment_station.PublicGetPaymentURLParams) (*platformclientmodels.PaymentURL, error) {
	url, badRequest, forbidden, notFound, err := p.Client.PaymentStation.PublicGetPaymentURL(input)
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

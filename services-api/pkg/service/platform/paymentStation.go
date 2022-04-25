// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"io"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type PaymentStationService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetPaymentCustomizationShort instead
func (p *PaymentStationService) GetPaymentCustomization(input *payment_station.GetPaymentCustomizationParams) (*platformclientmodels.Customization, error) {
	ok, err := p.Client.PaymentStation.GetPaymentCustomization(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetPaymentURLShort instead
func (p *PaymentStationService) PublicGetPaymentURL(input *payment_station.PublicGetPaymentURLParams) (*platformclientmodels.PaymentURL, error) {
	ok, badRequest, forbidden, notFound, err := p.Client.PaymentStation.PublicGetPaymentURL(input)
	if badRequest != nil {
		return nil, badRequest
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetPaymentMethodsShort instead
func (p *PaymentStationService) PublicGetPaymentMethods(input *payment_station.PublicGetPaymentMethodsParams) ([]*platformclientmodels.PaymentMethod, error) {
	ok, notFound, err := p.Client.PaymentStation.PublicGetPaymentMethods(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUnpaidPaymentOrderShort instead
func (p *PaymentStationService) PublicGetUnpaidPaymentOrder(input *payment_station.PublicGetUnpaidPaymentOrderParams) (*platformclientmodels.PaymentOrderDetails, error) {
	ok, notFound, conflict, err := p.Client.PaymentStation.PublicGetUnpaidPaymentOrder(input)
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

// Deprecated: Use PayShort instead
func (p *PaymentStationService) Pay(input *payment_station.PayParams) (*platformclientmodels.PaymentProcessResult, error) {
	ok, badRequest, notFound, conflict, err := p.Client.PaymentStation.Pay(input)
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

// Deprecated: Use PublicCheckPaymentOrderPaidStatusShort instead
func (p *PaymentStationService) PublicCheckPaymentOrderPaidStatus(input *payment_station.PublicCheckPaymentOrderPaidStatusParams) (*platformclientmodels.PaymentOrderPaidResult, error) {
	ok, notFound, err := p.Client.PaymentStation.PublicCheckPaymentOrderPaidStatus(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetPaymentPublicConfigShort instead
func (p *PaymentStationService) GetPaymentPublicConfig(input *payment_station.GetPaymentPublicConfigParams) (map[string]interface{}, error) {
	ok, err := p.Client.PaymentStation.GetPaymentPublicConfig(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetQRCodeShort instead
func (p *PaymentStationService) PublicGetQRCode(input *payment_station.PublicGetQRCodeParams, writer io.Writer) (io.Writer, error) {
	ok, err := p.Client.PaymentStation.PublicGetQRCode(input, writer)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicNormalizePaymentReturnURLShort instead
func (p *PaymentStationService) PublicNormalizePaymentReturnURL(input *payment_station.PublicNormalizePaymentReturnURLParams) error {
	_, temporaryRedirect, err := p.Client.PaymentStation.PublicNormalizePaymentReturnURL(input)
	if temporaryRedirect != nil {
		return temporaryRedirect
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetPaymentTaxValueShort instead
func (p *PaymentStationService) GetPaymentTaxValue(input *payment_station.GetPaymentTaxValueParams) (*platformclientmodels.TaxResult, error) {
	ok, badRequest, notFound, err := p.Client.PaymentStation.GetPaymentTaxValue(input)
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) GetPaymentCustomizationShort(input *payment_station.GetPaymentCustomizationParams) (*platformclientmodels.Customization, error) {
	ok, err := p.Client.PaymentStation.GetPaymentCustomizationShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) PublicGetPaymentURLShort(input *payment_station.PublicGetPaymentURLParams) (*platformclientmodels.PaymentURL, error) {
	ok, err := p.Client.PaymentStation.PublicGetPaymentURLShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) PublicGetPaymentMethodsShort(input *payment_station.PublicGetPaymentMethodsParams) ([]*platformclientmodels.PaymentMethod, error) {
	ok, err := p.Client.PaymentStation.PublicGetPaymentMethodsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) PublicGetUnpaidPaymentOrderShort(input *payment_station.PublicGetUnpaidPaymentOrderParams) (*platformclientmodels.PaymentOrderDetails, error) {
	ok, err := p.Client.PaymentStation.PublicGetUnpaidPaymentOrderShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) PayShort(input *payment_station.PayParams) (*platformclientmodels.PaymentProcessResult, error) {
	ok, err := p.Client.PaymentStation.PayShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) PublicCheckPaymentOrderPaidStatusShort(input *payment_station.PublicCheckPaymentOrderPaidStatusParams) (*platformclientmodels.PaymentOrderPaidResult, error) {
	ok, err := p.Client.PaymentStation.PublicCheckPaymentOrderPaidStatusShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) GetPaymentPublicConfigShort(input *payment_station.GetPaymentPublicConfigParams) (map[string]interface{}, error) {
	ok, err := p.Client.PaymentStation.GetPaymentPublicConfigShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) PublicGetQRCodeShort(input *payment_station.PublicGetQRCodeParams, writer io.Writer) (io.Writer, error) {
	ok, err := p.Client.PaymentStation.PublicGetQRCodeShort(input, writer)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (p *PaymentStationService) PublicNormalizePaymentReturnURLShort(input *payment_station.PublicNormalizePaymentReturnURLParams) error {
	_, err := p.Client.PaymentStation.PublicNormalizePaymentReturnURLShort(input)
	if err != nil {
		return err
	}

	return nil
}

func (p *PaymentStationService) GetPaymentTaxValueShort(input *payment_station.GetPaymentTaxValueParams) (*platformclientmodels.TaxResult, error) {
	ok, err := p.Client.PaymentStation.GetPaymentTaxValueShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

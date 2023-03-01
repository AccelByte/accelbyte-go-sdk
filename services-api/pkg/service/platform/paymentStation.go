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
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
)

type PaymentStationService struct {
	Client                 *platformclient.JusticePlatformService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *PaymentStationService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// deprecated(2022-01-10): please use GetPaymentCustomizationShort instead.
func (aaa *PaymentStationService) GetPaymentCustomization(input *payment_station.GetPaymentCustomizationParams) (*platformclientmodels.Customization, error) {
	ok, err := aaa.Client.PaymentStation.GetPaymentCustomization(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use PublicGetPaymentURLShort instead.
func (aaa *PaymentStationService) PublicGetPaymentURL(input *payment_station.PublicGetPaymentURLParams) (*platformclientmodels.PaymentURL, error) {
	ok, badRequest, forbidden, notFound, err := aaa.Client.PaymentStation.PublicGetPaymentURL(input)
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

// deprecated(2022-01-10): please use PublicGetPaymentMethodsShort instead.
func (aaa *PaymentStationService) PublicGetPaymentMethods(input *payment_station.PublicGetPaymentMethodsParams) ([]*platformclientmodels.PaymentMethod, error) {
	ok, notFound, err := aaa.Client.PaymentStation.PublicGetPaymentMethods(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use PublicGetUnpaidPaymentOrderShort instead.
func (aaa *PaymentStationService) PublicGetUnpaidPaymentOrder(input *payment_station.PublicGetUnpaidPaymentOrderParams) (*platformclientmodels.PaymentOrderDetails, error) {
	ok, notFound, conflict, err := aaa.Client.PaymentStation.PublicGetUnpaidPaymentOrder(input)
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

// deprecated(2022-01-10): please use PayShort instead.
func (aaa *PaymentStationService) Pay(input *payment_station.PayParams) (*platformclientmodels.PaymentProcessResult, error) {
	ok, badRequest, notFound, conflict, err := aaa.Client.PaymentStation.Pay(input)
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

// deprecated(2022-01-10): please use PublicCheckPaymentOrderPaidStatusShort instead.
func (aaa *PaymentStationService) PublicCheckPaymentOrderPaidStatus(input *payment_station.PublicCheckPaymentOrderPaidStatusParams) (*platformclientmodels.PaymentOrderPaidResult, error) {
	ok, notFound, err := aaa.Client.PaymentStation.PublicCheckPaymentOrderPaidStatus(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use GetPaymentPublicConfigShort instead.
func (aaa *PaymentStationService) GetPaymentPublicConfig(input *payment_station.GetPaymentPublicConfigParams) (map[string]interface{}, error) {
	ok, err := aaa.Client.PaymentStation.GetPaymentPublicConfig(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use PublicGetQRCodeShort instead.
func (aaa *PaymentStationService) PublicGetQRCode(input *payment_station.PublicGetQRCodeParams, writer io.Writer) (io.Writer, error) {
	ok, err := aaa.Client.PaymentStation.PublicGetQRCode(input, writer)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use PublicNormalizePaymentReturnURLShort instead.
func (aaa *PaymentStationService) PublicNormalizePaymentReturnURL(input *payment_station.PublicNormalizePaymentReturnURLParams) error {
	_, temporaryRedirect, err := aaa.Client.PaymentStation.PublicNormalizePaymentReturnURL(input)
	if temporaryRedirect != nil {
		return temporaryRedirect
	}
	if err != nil {
		return err
	}

	return nil
}

// deprecated(2022-01-10): please use GetPaymentTaxValueShort instead.
func (aaa *PaymentStationService) GetPaymentTaxValue(input *payment_station.GetPaymentTaxValueParams) (*platformclientmodels.TaxResult, error) {
	ok, badRequest, notFound, err := aaa.Client.PaymentStation.GetPaymentTaxValue(input)
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

func (aaa *PaymentStationService) GetPaymentCustomizationShort(input *payment_station.GetPaymentCustomizationParams) (*platformclientmodels.Customization, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.GetPaymentCustomizationShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicGetPaymentURLShort(input *payment_station.PublicGetPaymentURLParams) (*platformclientmodels.PaymentURL, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.PublicGetPaymentURLShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicGetPaymentMethodsShort(input *payment_station.PublicGetPaymentMethodsParams) ([]*platformclientmodels.PaymentMethod, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.PublicGetPaymentMethodsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicGetUnpaidPaymentOrderShort(input *payment_station.PublicGetUnpaidPaymentOrderParams) (*platformclientmodels.PaymentOrderDetails, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.PublicGetUnpaidPaymentOrderShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PayShort(input *payment_station.PayParams) (*platformclientmodels.PaymentProcessResult, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.PayShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicCheckPaymentOrderPaidStatusShort(input *payment_station.PublicCheckPaymentOrderPaidStatusParams) (*platformclientmodels.PaymentOrderPaidResult, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.PublicCheckPaymentOrderPaidStatusShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) GetPaymentPublicConfigShort(input *payment_station.GetPaymentPublicConfigParams) (map[string]interface{}, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.GetPaymentPublicConfigShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicGetQRCodeShort(input *payment_station.PublicGetQRCodeParams, writer io.Writer) (io.Writer, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.PublicGetQRCodeShort(input, writer)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicNormalizePaymentReturnURLShort(input *payment_station.PublicNormalizePaymentReturnURLParams) error {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := aaa.Client.PaymentStation.PublicNormalizePaymentReturnURLShort(input)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PaymentStationService) GetPaymentTaxValueShort(input *payment_station.GetPaymentTaxValueParams) (*platformclientmodels.TaxResult, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.PaymentStation.GetPaymentTaxValueShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// AdyenConfig Adyen config
//
// swagger:model Adyen config.
type AdyenConfig struct {

	// specifying the payment methods that are allowed to appear with the paymentMethod.type. paymentMethod.type of each payment method link: https://docs.adyen.com/developers/payment-methods
	AllowedPaymentMethods []string `json:"allowedPaymentMethods,omitempty"`

	// api key, max length is 4096
	APIKey string `json:"apiKey,omitempty"`

	// authorise as capture means no separated capture event
	AuthoriseAsCapture bool `json:"authoriseAsCapture"`

	// specifying the payment methods that are blocked with the paymentMethod.type. paymentMethod.type of each payment method link: https://docs.adyen.com/developers/payment-methods
	BlockedPaymentMethods []string `json:"blockedPaymentMethods,omitempty"`

	// client key, max length is 4096
	ClientKey string `json:"clientKey,omitempty"`

	// Adyen drop in settings json string
	DropInSettings string `json:"dropInSettings,omitempty"`

	// Provide the unique live url prefix from the "API URLs and Response" menu in the Adyen Customer Area. Under sandbox env, please input random words.
	LiveEndpointURLPrefix string `json:"liveEndpointUrlPrefix,omitempty"`

	// merchant account, max length is 255
	MerchantAccount string `json:"merchantAccount,omitempty"`

	// notification hmac key, max length is 4096
	NotificationHmacKey string `json:"notificationHmacKey,omitempty"`

	// notification password, max length is 255
	NotificationPassword string `json:"notificationPassword,omitempty"`

	// notification username, max length is 255
	NotificationUsername string `json:"notificationUsername,omitempty"`

	// return url, max length is 2000
	ReturnURL string `json:"returnUrl,omitempty"`

	// Adyen settings json string(Deprecated, please use dropInSettings field) adyen settings docs: https://docs.adyen.com/checkout/web-sdk/customization/settings/
	Settings string `json:"settings,omitempty"`
}

// Validate validates this Adyen config
func (m *AdyenConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AdyenConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AdyenConfig) UnmarshalBinary(b []byte) error {
	var res AdyenConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

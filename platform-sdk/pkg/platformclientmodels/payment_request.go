// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PaymentRequest Payment request
//
// swagger:model Payment request.
type PaymentRequest struct {

	// amount
	// Required: true
	// Format: int64
	Amount *int64 `json:"amount"`

	// additional fulfillment information
	Metadata interface{} `json:"metadata,omitempty"`

	// wallet platform, base on platform wallet rule to payment wallet
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'Xbox']
	WalletPlatform string `json:"walletPlatform,omitempty"`
}

// Validate validates this Payment request
func (m *PaymentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentRequest) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	return nil
}

var paymentRequestTypeWalletPlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentRequestTypeWalletPlatformPropEnum = append(paymentRequestTypeWalletPlatformPropEnum, v)
	}
}

const (

	// PaymentRequestWalletPlatformEPIC captures enum value "EPIC"
	PaymentRequestWalletPlatformEPIC string = "EPIC"

	// PaymentRequestWalletPlatformGOOGLEPLAY captures enum value "GOOGLEPLAY"
	PaymentRequestWalletPlatformGOOGLEPLAY string = "GOOGLEPLAY"

	// PaymentRequestWalletPlatformIOS captures enum value "IOS"
	PaymentRequestWalletPlatformIOS string = "IOS"

	// PaymentRequestWalletPlatformNINTENDO captures enum value "NINTENDO"
	PaymentRequestWalletPlatformNINTENDO string = "NINTENDO"

	// PaymentRequestWalletPlatformOCULUS captures enum value "OCULUS"
	PaymentRequestWalletPlatformOCULUS string = "OCULUS"

	// PaymentRequestWalletPlatformOTHER captures enum value "OTHER"
	PaymentRequestWalletPlatformOTHER string = "OTHER"

	// PaymentRequestWalletPlatformPLAYSTATION captures enum value "PLAYSTATION"
	PaymentRequestWalletPlatformPLAYSTATION string = "PLAYSTATION"

	// PaymentRequestWalletPlatformSTEAM captures enum value "STEAM"
	PaymentRequestWalletPlatformSTEAM string = "STEAM"

	// PaymentRequestWalletPlatformXBOX captures enum value "XBOX"
	PaymentRequestWalletPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *PaymentRequest) validateWalletPlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentRequestTypeWalletPlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentRequest) UnmarshalBinary(b []byte) error {
	var res PaymentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

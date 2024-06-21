// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AppleIAPReceipt Apple IAP receipt
//
// swagger:model Apple IAP receipt.
type AppleIAPReceipt struct {

	// Only used for iOS7 style app receipts that contain auto-renewable or non-renewing subscriptions. If value is true, response includes only the latest renewal transaction for any subscriptions.
	ExcludeOldTransactions bool `json:"excludeOldTransactions"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// The product identifier of the item that was purchased.
	// Required: true
	ProductID *string `json:"productId"`

	// The base64 encoded receipt data.
	// Required: true
	ReceiptData *string `json:"receiptData"`

	// country value from ISO countries
	Region string `json:"region,omitempty"`

	// The transaction identifier of the item that was purchased.
	// Required: true
	TransactionID *string `json:"transactionId"`
}

// Validate validates this Apple IAP receipt
func (m *AppleIAPReceipt) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProductID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReceiptData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTransactionID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AppleIAPReceipt) validateLanguage(formats strfmt.Registry) error {

	if swag.IsZero(m.Language) { // not required
		return nil
	}

	if err := validate.Pattern("language", "body", string(m.Language), `^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$`); err != nil {
		return err
	}

	return nil
}

func (m *AppleIAPReceipt) validateProductID(formats strfmt.Registry) error {

	if err := validate.Required("productId", "body", m.ProductID); err != nil {
		return err
	}

	return nil
}

func (m *AppleIAPReceipt) validateReceiptData(formats strfmt.Registry) error {

	if err := validate.Required("receiptData", "body", m.ReceiptData); err != nil {
		return err
	}

	return nil
}

func (m *AppleIAPReceipt) validateTransactionID(formats strfmt.Registry) error {

	if err := validate.Required("transactionId", "body", m.TransactionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AppleIAPReceipt) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppleIAPReceipt) UnmarshalBinary(b []byte) error {
	var res AppleIAPReceipt
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

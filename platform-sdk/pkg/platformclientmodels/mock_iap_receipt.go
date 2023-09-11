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

// MockIAPReceipt Mock IAP receipt
//
// swagger:model Mock IAP receipt.
type MockIAPReceipt struct {

	// The item identity type
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	ItemIdentityType string `json:"itemIdentityType,omitempty"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// The product identifier of the item that was purchased.
	// Required: true
	ProductID *string `json:"productId"`

	// country value from ISO countries
	Region string `json:"region,omitempty"`

	// The IAP type.
	// Enum: ['APPLE', 'EPICGAMES', 'GOOGLE', 'OCULUS', 'PLAYSTATION', 'STADIA', 'STEAM', 'TWITCH', 'XBOX']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Mock IAP receipt
func (m *MockIAPReceipt) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateProductID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var mockIapReceiptTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		mockIapReceiptTypeItemIdentityTypePropEnum = append(mockIapReceiptTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// MockIAPReceiptItemIdentityTypeITEMID captures enum value "ITEM_ID"
	MockIAPReceiptItemIdentityTypeITEMID string = "ITEM_ID"

	// MockIAPReceiptItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	MockIAPReceiptItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *MockIAPReceipt) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, mockIapReceiptTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *MockIAPReceipt) validateProductID(formats strfmt.Registry) error {

	if err := validate.Required("productId", "body", m.ProductID); err != nil {
		return err
	}

	return nil
}

var mockIapReceiptTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APPLE", "EPICGAMES", "GOOGLE", "OCULUS", "PLAYSTATION", "STADIA", "STEAM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		mockIapReceiptTypeTypePropEnum = append(mockIapReceiptTypeTypePropEnum, v)
	}
}

const (

	// MockIAPReceiptTypeAPPLE captures enum value "APPLE"
	MockIAPReceiptTypeAPPLE string = "APPLE"

	// MockIAPReceiptTypeEPICGAMES captures enum value "EPICGAMES"
	MockIAPReceiptTypeEPICGAMES string = "EPICGAMES"

	// MockIAPReceiptTypeGOOGLE captures enum value "GOOGLE"
	MockIAPReceiptTypeGOOGLE string = "GOOGLE"

	// MockIAPReceiptTypeOCULUS captures enum value "OCULUS"
	MockIAPReceiptTypeOCULUS string = "OCULUS"

	// MockIAPReceiptTypePLAYSTATION captures enum value "PLAYSTATION"
	MockIAPReceiptTypePLAYSTATION string = "PLAYSTATION"

	// MockIAPReceiptTypeSTADIA captures enum value "STADIA"
	MockIAPReceiptTypeSTADIA string = "STADIA"

	// MockIAPReceiptTypeSTEAM captures enum value "STEAM"
	MockIAPReceiptTypeSTEAM string = "STEAM"

	// MockIAPReceiptTypeTWITCH captures enum value "TWITCH"
	MockIAPReceiptTypeTWITCH string = "TWITCH"

	// MockIAPReceiptTypeXBOX captures enum value "XBOX"
	MockIAPReceiptTypeXBOX string = "XBOX"
)

// prop value enum
func (m *MockIAPReceipt) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, mockIapReceiptTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *MockIAPReceipt) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *MockIAPReceipt) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *MockIAPReceipt) UnmarshalBinary(b []byte) error {
	var res MockIAPReceipt
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// AdminOrderCreate Admin order create
//
// swagger:model Admin order create.
type AdminOrderCreate struct {

	// currency code, should match currency code in item region data
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency namespace, if options.skipPriceValidation is true, then this is required. If current namespace is publisher namespace, then currency namespace must be publisher namespace; if current is game namespace, currency namespace must be the same game namespace or publisher namespace
	CurrencyNamespace string `json:"currencyNamespace,omitempty"`

	// Discounted price of order, this should match (item_discounted_price * quantity) ifitem discounted price is available, otherwise it should equal to (item_price * quantity)
	// Required: true
	// Format: int32
	DiscountedPrice *int32 `json:"discountedPrice"`

	// extra field to store external order information
	Ext interface{} `json:"ext,omitempty"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// Creation options
	Options *OrderCreationOptions `json:"options,omitempty"`

	// platform
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'Xbox']
	Platform string `json:"platform,omitempty"`

	// Price of order, should match (item_price * quantity)
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// Quantity of item, min is 1
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// country value from ISO countries
	// Required: true
	Region *string `json:"region"`

	// custom return url for real payment, user will be redirected to this url once payment is finished
	ReturnURL string `json:"returnUrl,omitempty"`

	// sandbox
	Sandbox bool `json:"sandbox"`

	// section Id, required if order consists of section item
	SectionID string `json:"sectionId,omitempty"`
}

// Validate validates this Admin order create
func (m *AdminOrderCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDiscountedPrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AdminOrderCreate) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *AdminOrderCreate) validateDiscountedPrice(formats strfmt.Registry) error {

	if err := validate.Required("discountedPrice", "body", m.DiscountedPrice); err != nil {
		return err
	}

	return nil
}

func (m *AdminOrderCreate) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

var adminOrderCreateTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		adminOrderCreateTypePlatformPropEnum = append(adminOrderCreateTypePlatformPropEnum, v)
	}
}

const (

	// AdminOrderCreatePlatformEPIC captures enum value "EPIC"
	AdminOrderCreatePlatformEPIC string = "EPIC"

	// AdminOrderCreatePlatformGOOGLEPLAY captures enum value "GOOGLEPLAY"
	AdminOrderCreatePlatformGOOGLEPLAY string = "GOOGLEPLAY"

	// AdminOrderCreatePlatformIOS captures enum value "IOS"
	AdminOrderCreatePlatformIOS string = "IOS"

	// AdminOrderCreatePlatformNINTENDO captures enum value "NINTENDO"
	AdminOrderCreatePlatformNINTENDO string = "NINTENDO"

	// AdminOrderCreatePlatformOCULUS captures enum value "OCULUS"
	AdminOrderCreatePlatformOCULUS string = "OCULUS"

	// AdminOrderCreatePlatformOTHER captures enum value "OTHER"
	AdminOrderCreatePlatformOTHER string = "OTHER"

	// AdminOrderCreatePlatformPLAYSTATION captures enum value "PLAYSTATION"
	AdminOrderCreatePlatformPLAYSTATION string = "PLAYSTATION"

	// AdminOrderCreatePlatformSTEAM captures enum value "STEAM"
	AdminOrderCreatePlatformSTEAM string = "STEAM"

	// AdminOrderCreatePlatformXBOX captures enum value "XBOX"
	AdminOrderCreatePlatformXBOX string = "XBOX"
)

// prop value enum
func (m *AdminOrderCreate) validatePlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, adminOrderCreateTypePlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AdminOrderCreate) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *AdminOrderCreate) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

func (m *AdminOrderCreate) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AdminOrderCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AdminOrderCreate) UnmarshalBinary(b []byte) error {
	var res AdminOrderCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

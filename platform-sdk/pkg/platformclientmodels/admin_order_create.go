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

	// Discount codes, min size is 1, max size is 10notes: The same data will be auto merged, for example input discount code [111, 111] in request body, final discount code list should be 111
	// Unique: true
	DiscountCodes []string `json:"discountCodes"`

	// Discounted price of order, this should match (item_discounted_price * quantity) ifitem discounted price is available, otherwise it should equal to (item_price * quantity) if item is not flexible bundle, if item is flexible bundle, item discounted price should equal estimate discounted price.
	// Required: true
	// Format: int32
	DiscountedPrice *int32 `json:"discountedPrice"`

	// entitlement platform the platform which user are playing now and use for entitlement eg: user purchase item on Steam, it should be 'Steam'
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'Xbox']
	EntitlementPlatform string `json:"entitlementPlatform,omitempty"`

	// extra field to store external order information
	Ext interface{} `json:"ext,omitempty"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// Creation options
	Options *OrderCreationOptions `json:"options,omitempty"`

	// platform the platform which user are playing now and use for payment eg: user purchase item on Steam, it should be 'Steam'
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'Xbox']
	Platform string `json:"platform,omitempty"`

	// Price of order, should match (item_price * quantity) if item is not flexible bundle, should use flexible estimate price if item is flexible bundle
	// Format: int32
	Price int32 `json:"price,omitempty"`

	// Quantity of item, min is 1, and will default use 1 and ignore this quantity field if item is flexible bundle
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

var adminOrderCreateTypeEntitlementPlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		adminOrderCreateTypeEntitlementPlatformPropEnum = append(adminOrderCreateTypeEntitlementPlatformPropEnum, v)
	}
}

const (

	// AdminOrderCreateEntitlementPlatformEPIC captures enum value "EPIC"
	AdminOrderCreateEntitlementPlatformEPIC string = "EPIC"

	// AdminOrderCreateEntitlementPlatformGOOGLEPLAY captures enum value "GOOGLEPLAY"
	AdminOrderCreateEntitlementPlatformGOOGLEPLAY string = "GOOGLEPLAY"

	// AdminOrderCreateEntitlementPlatformIOS captures enum value "IOS"
	AdminOrderCreateEntitlementPlatformIOS string = "IOS"

	// AdminOrderCreateEntitlementPlatformNINTENDO captures enum value "NINTENDO"
	AdminOrderCreateEntitlementPlatformNINTENDO string = "NINTENDO"

	// AdminOrderCreateEntitlementPlatformOCULUS captures enum value "OCULUS"
	AdminOrderCreateEntitlementPlatformOCULUS string = "OCULUS"

	// AdminOrderCreateEntitlementPlatformOTHER captures enum value "OTHER"
	AdminOrderCreateEntitlementPlatformOTHER string = "OTHER"

	// AdminOrderCreateEntitlementPlatformPLAYSTATION captures enum value "PLAYSTATION"
	AdminOrderCreateEntitlementPlatformPLAYSTATION string = "PLAYSTATION"

	// AdminOrderCreateEntitlementPlatformSTEAM captures enum value "STEAM"
	AdminOrderCreateEntitlementPlatformSTEAM string = "STEAM"

	// AdminOrderCreateEntitlementPlatformXBOX captures enum value "XBOX"
	AdminOrderCreateEntitlementPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *AdminOrderCreate) validateEntitlementPlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, adminOrderCreateTypeEntitlementPlatformPropEnum, true); err != nil {
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

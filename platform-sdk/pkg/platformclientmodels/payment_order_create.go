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

// PaymentOrderCreate Payment order create
//
// swagger:model Payment order create.
type PaymentOrderCreate struct {

	// currency code, default is USD
	CurrencyCode string `json:"currencyCode,omitempty"`

	// currency namespace, default is publisher namespace
	CurrencyNamespace string `json:"currencyNamespace,omitempty"`

	// custom parameters
	CustomParameters interface{} `json:"customParameters,omitempty"`

	// Order desc, max length 2000
	// Required: true
	Description *string `json:"description"`

	// External order id
	// Required: true
	ExtOrderNo *string `json:"extOrderNo"`

	// optional, external user id, can be the character id
	ExtUserID string `json:"extUserId,omitempty"`

	// item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// metadata
	Metadata map[string]string `json:"metadata,omitempty"`

	// custom notify url for real payment, send notification to this url once payment action is finished
	NotifyURL string `json:"notifyUrl,omitempty"`

	// TEST PURPOSE, if set it will not send async notification to the API invoker, only can set true while this payment is sandbox
	OmitNotification bool `json:"omitNotification"`

	// platform
	Platform string `json:"platform,omitempty"`

	// Price of order
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// recurring payment order which has recurring token, will do recurring payment if present, otherwise start normal payment flow
	RecurringPaymentOrderNo string `json:"recurringPaymentOrderNo,omitempty"`

	// country value from ISO countries
	Region string `json:"region,omitempty"`

	// custom return url for real payment, user will be redirected to this url once payment is finished
	ReturnURL string `json:"returnUrl,omitempty"`

	// TEST PURPOSE, sandbox(Active in real currency mode), default is false
	Sandbox bool `json:"sandbox"`

	// optional, unique identity for the item
	Sku string `json:"sku,omitempty"`

	// subscriptionId, payment token will be saved for recurring payment
	SubscriptionID string `json:"subscriptionId,omitempty"`

	// Order title
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this Payment order create
func (m *PaymentOrderCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentOrderCreate) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderCreate) validateExtOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("extOrderNo", "body", m.ExtOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentOrderCreateTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderCreateTypeItemTypePropEnum = append(paymentOrderCreateTypeItemTypePropEnum, v)
	}
}

const (

	// PaymentOrderCreateItemTypeAPP captures enum value "APP"
	PaymentOrderCreateItemTypeAPP string = "APP"

	// PaymentOrderCreateItemTypeBUNDLE captures enum value "BUNDLE"
	PaymentOrderCreateItemTypeBUNDLE string = "BUNDLE"

	// PaymentOrderCreateItemTypeCODE captures enum value "CODE"
	PaymentOrderCreateItemTypeCODE string = "CODE"

	// PaymentOrderCreateItemTypeCOINS captures enum value "COINS"
	PaymentOrderCreateItemTypeCOINS string = "COINS"

	// PaymentOrderCreateItemTypeEXTENSION captures enum value "EXTENSION"
	PaymentOrderCreateItemTypeEXTENSION string = "EXTENSION"

	// PaymentOrderCreateItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	PaymentOrderCreateItemTypeINGAMEITEM string = "INGAMEITEM"

	// PaymentOrderCreateItemTypeLOOTBOX captures enum value "LOOTBOX"
	PaymentOrderCreateItemTypeLOOTBOX string = "LOOTBOX"

	// PaymentOrderCreateItemTypeMEDIA captures enum value "MEDIA"
	PaymentOrderCreateItemTypeMEDIA string = "MEDIA"

	// PaymentOrderCreateItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	PaymentOrderCreateItemTypeOPTIONBOX string = "OPTIONBOX"

	// PaymentOrderCreateItemTypeSEASON captures enum value "SEASON"
	PaymentOrderCreateItemTypeSEASON string = "SEASON"

	// PaymentOrderCreateItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	PaymentOrderCreateItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *PaymentOrderCreate) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderCreateTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderCreate) validateLanguage(formats strfmt.Registry) error {

	if swag.IsZero(m.Language) { // not required
		return nil
	}

	if err := validate.Pattern("language", "body", string(m.Language), `^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$`); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderCreate) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderCreate) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderCreate) UnmarshalBinary(b []byte) error {
	var res PaymentOrderCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// ExternalPaymentOrderCreate External payment order create
//
// swagger:model External payment order create.
type ExternalPaymentOrderCreate struct {

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

	// The game namespace
	// Required: true
	TargetNamespace *string `json:"targetNamespace"`

	// The user id in game namespace
	// Required: true
	TargetUserID *string `json:"targetUserId"`

	// Order title
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this External payment order create
func (m *ExternalPaymentOrderCreate) Validate(formats strfmt.Registry) error {
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
	if err := m.validateTargetNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetUserID(formats); err != nil {
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

func (m *ExternalPaymentOrderCreate) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ExternalPaymentOrderCreate) validateExtOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("extOrderNo", "body", m.ExtOrderNo); err != nil {
		return err
	}

	return nil
}

var externalPaymentOrderCreateTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		externalPaymentOrderCreateTypeItemTypePropEnum = append(externalPaymentOrderCreateTypeItemTypePropEnum, v)
	}
}

const (

	// ExternalPaymentOrderCreateItemTypeAPP captures enum value "APP"
	ExternalPaymentOrderCreateItemTypeAPP string = "APP"

	// ExternalPaymentOrderCreateItemTypeBUNDLE captures enum value "BUNDLE"
	ExternalPaymentOrderCreateItemTypeBUNDLE string = "BUNDLE"

	// ExternalPaymentOrderCreateItemTypeCODE captures enum value "CODE"
	ExternalPaymentOrderCreateItemTypeCODE string = "CODE"

	// ExternalPaymentOrderCreateItemTypeCOINS captures enum value "COINS"
	ExternalPaymentOrderCreateItemTypeCOINS string = "COINS"

	// ExternalPaymentOrderCreateItemTypeEXTENSION captures enum value "EXTENSION"
	ExternalPaymentOrderCreateItemTypeEXTENSION string = "EXTENSION"

	// ExternalPaymentOrderCreateItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ExternalPaymentOrderCreateItemTypeINGAMEITEM string = "INGAMEITEM"

	// ExternalPaymentOrderCreateItemTypeLOOTBOX captures enum value "LOOTBOX"
	ExternalPaymentOrderCreateItemTypeLOOTBOX string = "LOOTBOX"

	// ExternalPaymentOrderCreateItemTypeMEDIA captures enum value "MEDIA"
	ExternalPaymentOrderCreateItemTypeMEDIA string = "MEDIA"

	// ExternalPaymentOrderCreateItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ExternalPaymentOrderCreateItemTypeOPTIONBOX string = "OPTIONBOX"

	// ExternalPaymentOrderCreateItemTypeSEASON captures enum value "SEASON"
	ExternalPaymentOrderCreateItemTypeSEASON string = "SEASON"

	// ExternalPaymentOrderCreateItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ExternalPaymentOrderCreateItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ExternalPaymentOrderCreate) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, externalPaymentOrderCreateTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ExternalPaymentOrderCreate) validateLanguage(formats strfmt.Registry) error {

	if swag.IsZero(m.Language) { // not required
		return nil
	}

	if err := validate.Pattern("language", "body", string(m.Language), `^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$`); err != nil {
		return err
	}

	return nil
}

func (m *ExternalPaymentOrderCreate) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *ExternalPaymentOrderCreate) validateTargetNamespace(formats strfmt.Registry) error {

	if err := validate.Required("targetNamespace", "body", m.TargetNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ExternalPaymentOrderCreate) validateTargetUserID(formats strfmt.Registry) error {

	if err := validate.Required("targetUserId", "body", m.TargetUserID); err != nil {
		return err
	}

	return nil
}

func (m *ExternalPaymentOrderCreate) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ExternalPaymentOrderCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ExternalPaymentOrderCreate) UnmarshalBinary(b []byte) error {
	var res ExternalPaymentOrderCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

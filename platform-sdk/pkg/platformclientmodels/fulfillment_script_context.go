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

// FulfillmentScriptContext Fulfillment script context
//
// swagger:model Fulfillment script context.
type FulfillmentScriptContext struct {

	// item info
	// Required: true
	Item *ItemInfo `json:"item"`

	// fulfillment namespace, default accelbyte
	// Required: true
	Namespace *string `json:"namespace"`

	// order summary
	Order *OrderSummary `json:"order,omitempty"`

	// fulfillment source, default PURCHASE
	// Enum: ['ACHIEVEMENT', 'DLC', 'GIFT', 'IAP', 'OTHER', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REWARD']
	// Required: true
	Source *string `json:"source"`
}

// Validate validates this Fulfillment script context
func (m *FulfillmentScriptContext) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItem(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSource(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *FulfillmentScriptContext) validateItem(formats strfmt.Registry) error {

	if err := validate.Required("item", "body", m.Item); err != nil {
		return err
	}

	if m.Item != nil {
		if err := m.Item.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("item")
			}
			return err
		}
	}

	return nil
}

func (m *FulfillmentScriptContext) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var fulfillmentScriptContextTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "DLC", "GIFT", "IAP", "OTHER", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentScriptContextTypeSourcePropEnum = append(fulfillmentScriptContextTypeSourcePropEnum, v)
	}
}

const (

	// FulfillmentScriptContextSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	FulfillmentScriptContextSourceACHIEVEMENT string = "ACHIEVEMENT"

	// FulfillmentScriptContextSourceDLC captures enum value "DLC"
	FulfillmentScriptContextSourceDLC string = "DLC"

	// FulfillmentScriptContextSourceGIFT captures enum value "GIFT"
	FulfillmentScriptContextSourceGIFT string = "GIFT"

	// FulfillmentScriptContextSourceIAP captures enum value "IAP"
	FulfillmentScriptContextSourceIAP string = "IAP"

	// FulfillmentScriptContextSourceOTHER captures enum value "OTHER"
	FulfillmentScriptContextSourceOTHER string = "OTHER"

	// FulfillmentScriptContextSourcePROMOTION captures enum value "PROMOTION"
	FulfillmentScriptContextSourcePROMOTION string = "PROMOTION"

	// FulfillmentScriptContextSourcePURCHASE captures enum value "PURCHASE"
	FulfillmentScriptContextSourcePURCHASE string = "PURCHASE"

	// FulfillmentScriptContextSourceREDEEMCODE captures enum value "REDEEM_CODE"
	FulfillmentScriptContextSourceREDEEMCODE string = "REDEEM_CODE"

	// FulfillmentScriptContextSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	FulfillmentScriptContextSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// FulfillmentScriptContextSourceREWARD captures enum value "REWARD"
	FulfillmentScriptContextSourceREWARD string = "REWARD"
)

// prop value enum
func (m *FulfillmentScriptContext) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentScriptContextTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentScriptContext) validateSource(formats strfmt.Registry) error {

	if err := validate.Required("source", "body", m.Source); err != nil {
		return err
	}

	// value enum
	if err := m.validateSourceEnum("source", "body", *m.Source); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentScriptContext) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentScriptContext) UnmarshalBinary(b []byte) error {
	var res FulfillmentScriptContext
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

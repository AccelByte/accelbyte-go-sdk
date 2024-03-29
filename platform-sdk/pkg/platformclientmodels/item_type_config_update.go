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

// ItemTypeConfigUpdate Item type config update
//
// swagger:model Item type config update.
type ItemTypeConfigUpdate struct {

	// customized item clazz
	Clazz string `json:"clazz,omitempty"`

	// mock workflow while set true, default false
	DryRun bool `json:"dryRun"`

	// url to send the fulfillment notification
	// Required: true
	FulfillmentURL *string `json:"fulfillmentUrl"`

	// url to check if the item is purchasable
	PurchaseConditionURL string `json:"purchaseConditionUrl,omitempty"`
}

// Validate validates this Item type config update
func (m *ItemTypeConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFulfillmentURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ItemTypeConfigUpdate) validateFulfillmentURL(formats strfmt.Registry) error {

	if err := validate.Required("fulfillmentUrl", "body", m.FulfillmentURL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemTypeConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemTypeConfigUpdate) UnmarshalBinary(b []byte) error {
	var res ItemTypeConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

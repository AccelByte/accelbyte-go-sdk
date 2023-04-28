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

// RecurringChargeResult Recurring charge result
//
// swagger:model Recurring charge result.
type RecurringChargeResult struct {

	// code for fail to trigger
	Code string `json:"code,omitempty"`

	// detail for fail to trigger
	Detail string `json:"detail,omitempty"`

	// triggered or not
	// Required: true
	Triggered *bool `json:"triggered"`
}

// Validate validates this Recurring charge result
func (m *RecurringChargeResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTriggered(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RecurringChargeResult) validateTriggered(formats strfmt.Registry) error {

	if err := validate.Required("triggered", "body", m.Triggered); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RecurringChargeResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RecurringChargeResult) UnmarshalBinary(b []byte) error {
	var res RecurringChargeResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

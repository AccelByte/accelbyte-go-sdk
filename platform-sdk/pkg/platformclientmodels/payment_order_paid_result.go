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

// PaymentOrderPaidResult Payment order paid result
//
// swagger:model Payment order paid result.
type PaymentOrderPaidResult struct {

	// charging
	// Required: true
	Charging *bool `json:"charging"`

	// success
	// Required: true
	Success *bool `json:"success"`
}

// Validate validates this Payment order paid result
func (m *PaymentOrderPaidResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCharging(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentOrderPaidResult) validateCharging(formats strfmt.Registry) error {

	if err := validate.Required("charging", "body", m.Charging); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderPaidResult) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderPaidResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderPaidResult) UnmarshalBinary(b []byte) error {
	var res PaymentOrderPaidResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

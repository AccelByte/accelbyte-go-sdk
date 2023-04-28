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

// PaymentProcessResult Payment process result
//
// swagger:model Payment process result.
type PaymentProcessResult struct {

	// payment request process is pending
	// Required: true
	Pending *bool `json:"pending"`

	// failed reason
	Reason string `json:"reason,omitempty"`

	// redirect url, exists when pending is true
	RedirectURL string `json:"redirectUrl,omitempty"`

	// payment request process result
	// Required: true
	Success *bool `json:"success"`
}

// Validate validates this Payment process result
func (m *PaymentProcessResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePending(formats); err != nil {
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

func (m *PaymentProcessResult) validatePending(formats strfmt.Registry) error {

	if err := validate.Required("pending", "body", m.Pending); err != nil {
		return err
	}

	return nil
}

func (m *PaymentProcessResult) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentProcessResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentProcessResult) UnmarshalBinary(b []byte) error {
	var res PaymentProcessResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

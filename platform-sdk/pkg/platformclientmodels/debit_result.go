// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// DebitResult Debit result
//
// swagger:model Debit result.
type DebitResult struct {

	// currencycode
	CurrencyCode string `json:"currencyCode,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// request
	Request *DebitByCurrencyCodeRequest `json:"request,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Debit result
func (m *DebitResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DebitResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DebitResult) UnmarshalBinary(b []byte) error {
	var res DebitResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

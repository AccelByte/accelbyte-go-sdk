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

// CodeCreateResult Code create result
//
// swagger:model Code create result.
type CodeCreateResult struct {

	// number created
	// Required: true
	// Format: int32
	NumCreated *int32 `json:"numCreated"`
}

// Validate validates this Code create result
func (m *CodeCreateResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNumCreated(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CodeCreateResult) validateNumCreated(formats strfmt.Registry) error {

	if err := validate.Required("numCreated", "body", m.NumCreated); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CodeCreateResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CodeCreateResult) UnmarshalBinary(b []byte) error {
	var res CodeCreateResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

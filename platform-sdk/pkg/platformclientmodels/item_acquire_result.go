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

// ItemAcquireResult Item acquire result
//
// swagger:model Item acquire result.
type ItemAcquireResult struct {

	// max count
	// Required: true
	// Format: int32
	MaxCount *int32 `json:"maxCount"`

	// acquire result
	// Required: true
	Success *bool `json:"success"`
}

// Validate validates this Item acquire result
func (m *ItemAcquireResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxCount(formats); err != nil {
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

func (m *ItemAcquireResult) validateMaxCount(formats strfmt.Registry) error {

	if err := validate.Required("maxCount", "body", m.MaxCount); err != nil {
		return err
	}

	return nil
}

func (m *ItemAcquireResult) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemAcquireResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemAcquireResult) UnmarshalBinary(b []byte) error {
	var res ItemAcquireResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

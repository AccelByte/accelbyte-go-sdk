// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsSessionResponse Models session response
//
// swagger:model Models session response.
type ModelsSessionResponse struct {

	// session
	// Required: true
	Session *ModelsSession `json:"session"`
}

// Validate validates this Models session response
func (m *ModelsSessionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSession(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSessionResponse) validateSession(formats strfmt.Registry) error {

	if err := validate.Required("session", "body", m.Session); err != nil {
		return err
	}

	if m.Session != nil {
		if err := m.Session.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("session")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSessionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSessionResponse) UnmarshalBinary(b []byte) error {
	var res ModelsSessionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

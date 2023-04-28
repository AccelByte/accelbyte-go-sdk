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

// ModelsServerSessionResponse Models server session response
//
// swagger:model Models server session response.
type ModelsServerSessionResponse struct {

	// session_id
	// Required: true
	SessionID *string `json:"session_id"`
}

// Validate validates this Models server session response
func (m *ModelsServerSessionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsServerSessionResponse) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("session_id", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsServerSessionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsServerSessionResponse) UnmarshalBinary(b []byte) error {
	var res ModelsServerSessionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

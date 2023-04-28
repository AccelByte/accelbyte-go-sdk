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

// ModelsClaimSessionRequest Models claim session request
//
// swagger:model Models claim session request.
type ModelsClaimSessionRequest struct {

	// session_id
	// Required: true
	SessionID *string `json:"session_id"`
}

// Validate validates this Models claim session request
func (m *ModelsClaimSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsClaimSessionRequest) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("session_id", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsClaimSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsClaimSessionRequest) UnmarshalBinary(b []byte) error {
	var res ModelsClaimSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

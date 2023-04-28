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

// RevocationError Revocation error
//
// swagger:model Revocation error.
type RevocationError struct {

	// error code
	// Format: int32
	Code int32 `json:"code,omitempty"`

	// http status
	// Format: int32
	HTTPStatus int32 `json:"httpStatus,omitempty"`

	// error message
	Message string `json:"message,omitempty"`
}

// Validate validates this Revocation error
func (m *RevocationError) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevocationError) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevocationError) UnmarshalBinary(b []byte) error {
	var res RevocationError
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

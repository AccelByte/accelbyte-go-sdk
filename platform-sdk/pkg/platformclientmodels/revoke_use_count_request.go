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

// RevokeUseCountRequest Revoke use count request
//
// swagger:model Revoke use count request.
type RevokeUseCountRequest struct {

	// reason
	Reason string `json:"reason,omitempty"`

	// use count
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Revoke use count request
func (m *RevokeUseCountRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevokeUseCountRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeUseCountRequest) UnmarshalBinary(b []byte) error {
	var res RevokeUseCountRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

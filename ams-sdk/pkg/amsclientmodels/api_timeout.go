// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APITimeout Api timeout
//
// swagger:model Api timeout.
type APITimeout struct {

	// claim
	// Format: int64
	Claim int64 `json:"claim,omitempty"`

	// creation
	// Format: int64
	Creation int64 `json:"creation,omitempty"`

	// drain
	// Format: int64
	Drain int64 `json:"drain,omitempty"`

	// session
	// Format: int64
	Session int64 `json:"session,omitempty"`

	// unresponsive
	// Format: int64
	Unresponsive int64 `json:"unresponsive,omitempty"`
}

// Validate validates this Api timeout
func (m *APITimeout) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APITimeout) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APITimeout) UnmarshalBinary(b []byte) error {
	var res APITimeout
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

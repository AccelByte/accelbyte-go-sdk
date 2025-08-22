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

	// Maximum time allowed for the DS to be claimed after it is created. (e.g. '4h')
	// Format: int64
	Claim int64 `json:"claim,omitempty"`

	// Maximum time allowed for the DS to become ready. (e.g. '30s')
	// Format: int64
	Creation int64 `json:"creation,omitempty"`

	// Maximum time allowed for the DS to drain gracefully after a drain signal before being terminated. (e.g. '30s')
	// Format: int64
	Drain int64 `json:"drain,omitempty"`

	// Maximum time the game session will be allowed to run, (e.g. '1h30m')
	// Format: int64
	Session int64 `json:"session,omitempty"`

	// Maximum time allowed for the DS to be unresponsive before being terminated. (e.g. '1m')
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

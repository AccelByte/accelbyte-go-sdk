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

// PlatformDLCConfigUpdate Platform DLC config update
//
// swagger:model Platform DLC config update.
type PlatformDLCConfigUpdate struct {

	// platform dlc config list
	Data []*PlatformDLCEntry `json:"data,omitempty"`
}

// Validate validates this Platform DLC config update
func (m *PlatformDLCConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlatformDLCConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformDLCConfigUpdate) UnmarshalBinary(b []byte) error {
	var res PlatformDLCConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

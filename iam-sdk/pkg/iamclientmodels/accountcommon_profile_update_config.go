// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// AccountcommonProfileUpdateConfig Accountcommon profile update config
//
// swagger:model Accountcommon profile update config.
type AccountcommonProfileUpdateConfig struct {

	// max value is 366*24=8784 hours
	// Format: int64
	MinimumAllowedInterval int64 `json:"minimumAllowedInterval,omitempty"`
}

// Validate validates this Accountcommon profile update config
func (m *AccountcommonProfileUpdateConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonProfileUpdateConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonProfileUpdateConfig) UnmarshalBinary(b []byte) error {
	var res AccountcommonProfileUpdateConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

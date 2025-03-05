// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// EnvconfigConfiguration Envconfig configuration
//
// swagger:model Envconfig configuration.
type EnvconfigConfiguration struct {

	// in nano seconds
	// Format: int64
	SESSIONDELETIONGRACEPERIOD int64 `json:"SESSION_DELETION_GRACE_PERIOD,omitempty"`
}

// Validate validates this Envconfig configuration
func (m *EnvconfigConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EnvconfigConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EnvconfigConfiguration) UnmarshalBinary(b []byte) error {
	var res EnvconfigConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

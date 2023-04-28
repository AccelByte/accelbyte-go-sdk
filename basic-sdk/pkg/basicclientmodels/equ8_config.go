// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// EQU8Config Equ8 config
//
// swagger:model Equ8 config.
type EQU8Config struct {

	// apikey
	APIKey string `json:"apiKey,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this Equ8 config
func (m *EQU8Config) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EQU8Config) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EQU8Config) UnmarshalBinary(b []byte) error {
	var res EQU8Config
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

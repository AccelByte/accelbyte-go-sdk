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

// TLSConfig TLS config
//
// swagger:model TLS config.
type TLSConfig struct {

	// root cert file bytes
	// Format: byte
	RootCertFileBytes []string `json:"rootCertFileBytes,omitempty"`

	// root cert file name
	RootCertFileName string `json:"rootCertFileName,omitempty"`
}

// Validate validates this TLS config
func (m *TLSConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TLSConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TLSConfig) UnmarshalBinary(b []byte) error {
	var res TLSConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

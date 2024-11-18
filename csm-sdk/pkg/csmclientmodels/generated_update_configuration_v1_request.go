// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// GeneratedUpdateConfigurationV1Request Generated update configuration V1 request
//
// swagger:model Generated update configuration V1 request.
type GeneratedUpdateConfigurationV1Request struct {

	// applymask
	ApplyMask bool `json:"applyMask"`

	// description
	Description string `json:"description,omitempty"`

	// value
	Value string `json:"value,omitempty"`
}

// Validate validates this Generated update configuration V1 request
func (m *GeneratedUpdateConfigurationV1Request) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedUpdateConfigurationV1Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedUpdateConfigurationV1Request) UnmarshalBinary(b []byte) error {
	var res GeneratedUpdateConfigurationV1Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

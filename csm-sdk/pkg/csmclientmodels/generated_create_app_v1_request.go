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

// GeneratedCreateAppV1Request Generated create app V1 request
//
// swagger:model Generated create app V1 request.
type GeneratedCreateAppV1Request struct {

	// description
	Description string `json:"description,omitempty"`

	// scenario
	Scenario string `json:"scenario,omitempty"`
}

// Validate validates this Generated create app V1 request
func (m *GeneratedCreateAppV1Request) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedCreateAppV1Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedCreateAppV1Request) UnmarshalBinary(b []byte) error {
	var res GeneratedCreateAppV1Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

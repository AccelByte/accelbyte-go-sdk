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

// GeneratedCreateAppV1Response Generated create app V1 response
//
// swagger:model Generated create app V1 response.
type GeneratedCreateAppV1Response struct {

	// statusurl
	StatusURL string `json:"statusUrl,omitempty"`
}

// Validate validates this Generated create app V1 response
func (m *GeneratedCreateAppV1Response) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedCreateAppV1Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedCreateAppV1Response) UnmarshalBinary(b []byte) error {
	var res GeneratedCreateAppV1Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

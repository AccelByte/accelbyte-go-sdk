// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAddBufferResponse Models add buffer response
//
// swagger:model Models add buffer response.
type ModelsAddBufferResponse struct {

	// message
	// Required: true
	Message *string `json:"Message"`
}

// Validate validates this Models add buffer response
func (m *ModelsAddBufferResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAddBufferResponse) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("Message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAddBufferResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAddBufferResponse) UnmarshalBinary(b []byte) error {
	var res ModelsAddBufferResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

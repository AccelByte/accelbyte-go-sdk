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

// ModelsImportResponse Models import response
//
// swagger:model Models import response.
type ModelsImportResponse struct {

	// affected
	// Required: true
	Affected []string `json:"affected"`

	// failed
	Failed []string `json:"failed,omitempty"`
}

// Validate validates this Models import response
func (m *ModelsImportResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAffected(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsImportResponse) validateAffected(formats strfmt.Registry) error {

	if err := validate.Required("affected", "body", m.Affected); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsImportResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsImportResponse) UnmarshalBinary(b []byte) error {
	var res ModelsImportResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

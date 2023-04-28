// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eventlogclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUX Models UX
//
// swagger:model Models UX.
type ModelsUX struct {

	// description
	// Required: true
	Description *string `json:"Description"`

	// ux
	// Required: true
	// Format: int32
	UX *int32 `json:"UX"`
}

// Validate validates this Models UX
func (m *ModelsUX) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUX(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUX) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("Description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUX) validateUX(formats strfmt.Registry) error {

	if err := validate.Required("UX", "body", m.UX); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUX) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUX) UnmarshalBinary(b []byte) error {
	var res ModelsUX
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

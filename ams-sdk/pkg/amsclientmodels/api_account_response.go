// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIAccountResponse Api account response
//
// swagger:model Api account response.
type APIAccountResponse struct {

	// limits
	// Required: true
	Limits *APIAccountLimits `json:"Limits"`

	// id
	// Required: true
	ID *string `json:"id"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespaces
	// Required: true
	Namespaces []string `json:"namespaces"`
}

// Validate validates this Api account response
func (m *APIAccountResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLimits(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespaces(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIAccountResponse) validateLimits(formats strfmt.Registry) error {

	if err := validate.Required("Limits", "body", m.Limits); err != nil {
		return err
	}

	if m.Limits != nil {
		if err := m.Limits.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("Limits")
			}
			return err
		}
	}

	return nil
}

func (m *APIAccountResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIAccountResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIAccountResponse) validateNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("namespaces", "body", m.Namespaces); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIAccountResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIAccountResponse) UnmarshalBinary(b []byte) error {
	var res APIAccountResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

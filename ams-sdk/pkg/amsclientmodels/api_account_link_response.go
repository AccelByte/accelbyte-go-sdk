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

// APIAccountLinkResponse Api account link response
//
// swagger:model Api account link response.
type APIAccountLinkResponse struct {

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

// Validate validates this Api account link response
func (m *APIAccountLinkResponse) Validate(formats strfmt.Registry) error {
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

func (m *APIAccountLinkResponse) validateLimits(formats strfmt.Registry) error {

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

func (m *APIAccountLinkResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIAccountLinkResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIAccountLinkResponse) validateNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("namespaces", "body", m.Namespaces); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIAccountLinkResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIAccountLinkResponse) UnmarshalBinary(b []byte) error {
	var res APIAccountLinkResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

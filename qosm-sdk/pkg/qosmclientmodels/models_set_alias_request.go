// Code generated by go-swagger; DO NOT EDIT.

package qosmclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsSetAliasRequest models set alias request
//
// swagger:model models.SetAliasRequest
type ModelsSetAliasRequest struct {

	// alias
	// Required: true
	Alias *string `json:"alias"`
}

// Validate validates this models set alias request
func (m *ModelsSetAliasRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAlias(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSetAliasRequest) validateAlias(formats strfmt.Registry) error {

	if err := validate.Required("alias", "body", m.Alias); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSetAliasRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSetAliasRequest) UnmarshalBinary(b []byte) error {
	var res ModelsSetAliasRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

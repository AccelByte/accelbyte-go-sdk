// Code generated by go-swagger; DO NOT EDIT.

package dslogmanagerclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRequestMatchMember models request match member
//
// swagger:model models.RequestMatchMember
type ModelsRequestMatchMember struct {

	// user id
	// Required: true
	UserID *string `json:"user_id"`
}

// Validate validates this models request match member
func (m *ModelsRequestMatchMember) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRequestMatchMember) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRequestMatchMember) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRequestMatchMember) UnmarshalBinary(b []byte) error {
	var res ModelsRequestMatchMember
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

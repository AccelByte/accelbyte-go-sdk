// Code generated by go-swagger; DO NOT EDIT.

package ugcclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreateTagRequest models create tag request
//
// swagger:model models.CreateTagRequest
type ModelsCreateTagRequest struct {

	// tag
	// Required: true
	Tag *string `json:"tag"`
}

// Validate validates this models create tag request
func (m *ModelsCreateTagRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTag(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateTagRequest) validateTag(formats strfmt.Registry) error {

	if err := validate.Required("tag", "body", m.Tag); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateTagRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateTagRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateTagRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
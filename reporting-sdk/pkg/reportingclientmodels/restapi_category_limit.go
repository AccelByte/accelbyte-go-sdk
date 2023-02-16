// Code generated by go-swagger; DO NOT EDIT.

package reportingclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiCategoryLimit restapi category limit
//
// swagger:model restapi.categoryLimit
type RestapiCategoryLimit struct {

	// extension category
	ExtensionCategory string `json:"extensionCategory,omitempty"`

	// must between 1 to 2147483647
	// Required: true
	MaxReportPerTicket *int32 `json:"maxReportPerTicket"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this restapi category limit
func (m *RestapiCategoryLimit) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxReportPerTicket(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiCategoryLimit) validateMaxReportPerTicket(formats strfmt.Registry) error {

	if err := validate.Required("maxReportPerTicket", "body", m.MaxReportPerTicket); err != nil {
		return err
	}

	return nil
}

func (m *RestapiCategoryLimit) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiCategoryLimit) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiCategoryLimit) UnmarshalBinary(b []byte) error {
	var res RestapiCategoryLimit
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
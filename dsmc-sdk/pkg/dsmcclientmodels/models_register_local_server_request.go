// Code generated by go-swagger; DO NOT EDIT.

package dsmcclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRegisterLocalServerRequest models register local server request
//
// swagger:model models.RegisterLocalServerRequest
type ModelsRegisterLocalServerRequest struct {

	// custom attribute
	// Required: true
	CustomAttribute *string `json:"custom_attribute"`

	// ip
	// Required: true
	IP *string `json:"ip"`

	// name
	// Required: true
	Name *string `json:"name"`

	// port
	// Required: true
	Port *int32 `json:"port"`
}

// Validate validates this models register local server request
func (m *ModelsRegisterLocalServerRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCustomAttribute(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIP(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePort(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRegisterLocalServerRequest) validateCustomAttribute(formats strfmt.Registry) error {

	if err := validate.Required("custom_attribute", "body", m.CustomAttribute); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRegisterLocalServerRequest) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRegisterLocalServerRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRegisterLocalServerRequest) validatePort(formats strfmt.Registry) error {

	if err := validate.Required("port", "body", m.Port); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRegisterLocalServerRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRegisterLocalServerRequest) UnmarshalBinary(b []byte) error {
	var res ModelsRegisterLocalServerRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

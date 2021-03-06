// Code generated by go-swagger; DO NOT EDIT.

package basicclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UpdateCountryGroupRequest update country group request
//
// swagger:model UpdateCountryGroupRequest
type UpdateCountryGroupRequest struct {

	// countries
	Countries []*CountryObject `json:"countries"`

	// country group name
	CountryGroupName string `json:"countryGroupName,omitempty"`
}

// Validate validates this update country group request
func (m *UpdateCountryGroupRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCountries(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UpdateCountryGroupRequest) validateCountries(formats strfmt.Registry) error {

	if swag.IsZero(m.Countries) { // not required
		return nil
	}

	for i := 0; i < len(m.Countries); i++ {
		if swag.IsZero(m.Countries[i]) { // not required
			continue
		}

		if m.Countries[i] != nil {
			if err := m.Countries[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("countries" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *UpdateCountryGroupRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UpdateCountryGroupRequest) UnmarshalBinary(b []byte) error {
	var res UpdateCountryGroupRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

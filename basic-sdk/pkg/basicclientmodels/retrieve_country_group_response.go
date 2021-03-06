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

// RetrieveCountryGroupResponse retrieve country group response
//
// swagger:model RetrieveCountryGroupResponse
type RetrieveCountryGroupResponse struct {

	// countries
	Countries []*CountryObject `json:"countries"`

	// country group code
	CountryGroupCode string `json:"countryGroupCode,omitempty"`

	// country group name
	CountryGroupName string `json:"countryGroupName,omitempty"`
}

// Validate validates this retrieve country group response
func (m *RetrieveCountryGroupResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCountries(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrieveCountryGroupResponse) validateCountries(formats strfmt.Registry) error {

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
func (m *RetrieveCountryGroupResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveCountryGroupResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveCountryGroupResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

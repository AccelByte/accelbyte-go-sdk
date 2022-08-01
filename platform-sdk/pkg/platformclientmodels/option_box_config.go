// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// OptionBoxConfig Option box config.
//
// swagger:model OptionBoxConfig
type OptionBoxConfig struct {

	// Option box items
	BoxItems []*OptionBoxItem `json:"boxItems"`
}

// Validate validates this option box config
func (m *OptionBoxConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBoxItems(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OptionBoxConfig) validateBoxItems(formats strfmt.Registry) error {

	if swag.IsZero(m.BoxItems) { // not required
		return nil
	}

	for i := 0; i < len(m.BoxItems); i++ {
		if swag.IsZero(m.BoxItems[i]) { // not required
			continue
		}

		if m.BoxItems[i] != nil {
			if err := m.BoxItems[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("boxItems" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *OptionBoxConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OptionBoxConfig) UnmarshalBinary(b []byte) error {
	var res OptionBoxConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
// Code generated by go-swagger; DO NOT EDIT.

package seasonpassclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// TierCreate A DTO object for creating tier API call.
//
// swagger:model TierCreate
type TierCreate struct {

	// zero based tier index to be inserted at, -1 means appending to the end, default -1
	Index int32 `json:"index,omitempty"`

	// create tier quantity, default 1
	Quantity int32 `json:"quantity,omitempty"`

	// tier content, default null tier
	Tier *TierInput `json:"tier,omitempty"`
}

// Validate validates this tier create
func (m *TierCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTier(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TierCreate) validateTier(formats strfmt.Registry) error {

	if swag.IsZero(m.Tier) { // not required
		return nil
	}

	if m.Tier != nil {
		if err := m.Tier.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("tier")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TierCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TierCreate) UnmarshalBinary(b []byte) error {
	var res TierCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// TicketDynamicInfo ticket dynamic info
//
// swagger:model TicketDynamicInfo
type TicketDynamicInfo struct {

	// The available sale count, -1 means UNLIMITED
	// Required: true
	AvailableSaleCount *int32 `json:"availableSaleCount"`
}

// Validate validates this ticket dynamic info
func (m *TicketDynamicInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvailableSaleCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TicketDynamicInfo) validateAvailableSaleCount(formats strfmt.Registry) error {

	if err := validate.Required("availableSaleCount", "body", m.AvailableSaleCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TicketDynamicInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TicketDynamicInfo) UnmarshalBinary(b []byte) error {
	var res TicketDynamicInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Code generated by go-swagger; DO NOT EDIT.

package seasonpassclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// TierReorder tier reorder
//
// swagger:model TierReorder
type TierReorder struct {

	// new index tier should be moved to, zero based, -1 means appending to the end
	NewIndex int32 `json:"newIndex,omitempty"`
}

// Validate validates this tier reorder
func (m *TierReorder) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *TierReorder) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TierReorder) UnmarshalBinary(b []byte) error {
	var res TierReorder
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

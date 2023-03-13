// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// RevokeEntitlement revoke entitlement
//
// swagger:model RevokeEntitlement
type RevokeEntitlement struct {

	// entitlement id
	EntitlementID string `json:"entitlementId,omitempty"`
}

// Validate validates this revoke entitlement
func (m *RevokeEntitlement) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *RevokeEntitlement) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeEntitlement) UnmarshalBinary(b []byte) error {
	var res RevokeEntitlement
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

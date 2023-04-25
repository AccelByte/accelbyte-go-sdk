// Code generated by go-swagger; DO NOT EDIT.

package basicclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UserProfileBulkRequest user profile bulk request
//
// swagger:model UserProfileBulkRequest
type UserProfileBulkRequest struct {

	// User IDs, list of User ID with limit max to 100 User ID
	UserIds []string `json:"userIds"`
}

// Validate validates this user profile bulk request
func (m *UserProfileBulkRequest) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *UserProfileBulkRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserProfileBulkRequest) UnmarshalBinary(b []byte) error {
	var res UserProfileBulkRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Code generated by go-swagger; DO NOT EDIT.

package lobbyclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelGetFriendsResponse model get friends response
//
// swagger:model model.GetFriendsResponse
type ModelGetFriendsResponse struct {

	// friend i ds
	// Required: true
	FriendIDs []string `json:"friendIDs"`

	// paging
	// Required: true
	Paging *ModelPagination `json:"paging"`
}

// Validate validates this model get friends response
func (m *ModelGetFriendsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFriendIDs(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePaging(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelGetFriendsResponse) validateFriendIDs(formats strfmt.Registry) error {

	if err := validate.Required("friendIDs", "body", m.FriendIDs); err != nil {
		return err
	}

	return nil
}

func (m *ModelGetFriendsResponse) validatePaging(formats strfmt.Registry) error {

	if err := validate.Required("paging", "body", m.Paging); err != nil {
		return err
	}

	if m.Paging != nil {
		if err := m.Paging.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("paging")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGetFriendsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGetFriendsResponse) UnmarshalBinary(b []byte) error {
	var res ModelGetFriendsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

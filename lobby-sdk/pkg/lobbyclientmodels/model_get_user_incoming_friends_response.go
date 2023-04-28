// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelGetUserIncomingFriendsResponse Model get user incoming friends response
//
// swagger:model Model get user incoming friends response.
type ModelGetUserIncomingFriendsResponse struct {

	// friendids
	// Required: true
	FriendIDs []string `json:"friendIDs"`

	// paging
	// Required: true
	Paging *ModelPagination `json:"paging"`
}

// Validate validates this Model get user incoming friends response
func (m *ModelGetUserIncomingFriendsResponse) Validate(formats strfmt.Registry) error {
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

func (m *ModelGetUserIncomingFriendsResponse) validateFriendIDs(formats strfmt.Registry) error {

	if err := validate.Required("friendIDs", "body", m.FriendIDs); err != nil {
		return err
	}

	return nil
}

func (m *ModelGetUserIncomingFriendsResponse) validatePaging(formats strfmt.Registry) error {

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
func (m *ModelGetUserIncomingFriendsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGetUserIncomingFriendsResponse) UnmarshalBinary(b []byte) error {
	var res ModelGetUserIncomingFriendsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

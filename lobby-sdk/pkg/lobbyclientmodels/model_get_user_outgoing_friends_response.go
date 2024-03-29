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

// ModelGetUserOutgoingFriendsResponse Model get user outgoing friends response
//
// swagger:model Model get user outgoing friends response.
type ModelGetUserOutgoingFriendsResponse struct {

	// friendids
	// Required: true
	FriendIDs []string `json:"friendIDs"`

	// paging
	// Required: true
	Paging *ModelPagination `json:"paging"`
}

// Validate validates this Model get user outgoing friends response
func (m *ModelGetUserOutgoingFriendsResponse) Validate(formats strfmt.Registry) error {
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

func (m *ModelGetUserOutgoingFriendsResponse) validateFriendIDs(formats strfmt.Registry) error {

	if err := validate.Required("friendIDs", "body", m.FriendIDs); err != nil {
		return err
	}

	return nil
}

func (m *ModelGetUserOutgoingFriendsResponse) validatePaging(formats strfmt.Registry) error {

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
func (m *ModelGetUserOutgoingFriendsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGetUserOutgoingFriendsResponse) UnmarshalBinary(b []byte) error {
	var res ModelGetUserOutgoingFriendsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

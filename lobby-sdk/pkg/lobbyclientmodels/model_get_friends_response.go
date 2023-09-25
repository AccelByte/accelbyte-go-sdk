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

// ModelGetFriendsResponse Model get friends response
//
// swagger:model Model get friends response.
type ModelGetFriendsResponse struct {

	// friendids
	// Required: true
	FriendIDs []string `json:"friendIDs"`

	// friends
	Friends []*ModelFriendWithPlatform `json:"friends,omitempty"`

	// friendssincetimes
	// Required: true
	FriendsSinceTimes []string `json:"friendsSinceTimes"`

	// paging
	// Required: true
	Paging *ModelPagination `json:"paging"`
}

// Validate validates this Model get friends response
func (m *ModelGetFriendsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFriendIDs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFriendsSinceTimes(formats); err != nil {
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

func (m *ModelGetFriendsResponse) validateFriendsSinceTimes(formats strfmt.Registry) error {

	if err := validate.Required("friendsSinceTimes", "body", m.FriendsSinceTimes); err != nil {
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

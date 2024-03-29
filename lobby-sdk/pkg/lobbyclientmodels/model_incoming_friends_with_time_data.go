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

// ModelIncomingFriendsWithTimeData Model incoming friends with time data
//
// swagger:model Model incoming friends with time data.
type ModelIncomingFriendsWithTimeData struct {

	// friendid
	// Required: true
	FriendID *string `json:"friendId"`

	// requestedat
	// Required: true
	// Format: date-time
	RequestedAt strfmt.DateTime `json:"requestedAt"`
}

// Validate validates this Model incoming friends with time data
func (m *ModelIncomingFriendsWithTimeData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFriendID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelIncomingFriendsWithTimeData) validateFriendID(formats strfmt.Registry) error {

	if err := validate.Required("friendId", "body", m.FriendID); err != nil {
		return err
	}

	return nil
}

func (m *ModelIncomingFriendsWithTimeData) validateRequestedAt(formats strfmt.Registry) error {

	if err := validate.Required("requestedAt", "body", strfmt.DateTime(m.RequestedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("requestedAt", "body", "date-time", m.RequestedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelIncomingFriendsWithTimeData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelIncomingFriendsWithTimeData) UnmarshalBinary(b []byte) error {
	var res ModelIncomingFriendsWithTimeData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

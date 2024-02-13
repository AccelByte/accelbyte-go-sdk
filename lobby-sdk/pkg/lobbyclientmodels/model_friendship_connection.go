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

// ModelFriendshipConnection Model friendship connection
//
// swagger:model Model friendship connection.
type ModelFriendshipConnection struct {

	// friendid
	// Required: true
	FriendID *string `json:"friendId"`

	// subjectid
	// Required: true
	SubjectID *string `json:"subjectId"`
}

// Validate validates this Model friendship connection
func (m *ModelFriendshipConnection) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFriendID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubjectID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelFriendshipConnection) validateFriendID(formats strfmt.Registry) error {

	if err := validate.Required("friendId", "body", m.FriendID); err != nil {
		return err
	}

	return nil
}

func (m *ModelFriendshipConnection) validateSubjectID(formats strfmt.Registry) error {

	if err := validate.Required("subjectId", "body", m.SubjectID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelFriendshipConnection) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelFriendshipConnection) UnmarshalBinary(b []byte) error {
	var res ModelFriendshipConnection
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

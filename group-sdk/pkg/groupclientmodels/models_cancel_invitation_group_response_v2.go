// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCancelInvitationGroupResponseV2 Models cancel invitation group response V2
//
// swagger:model Models cancel invitation group response V2.
type ModelsCancelInvitationGroupResponseV2 struct {

	// groupid
	// Required: true
	GroupID *string `json:"groupId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models cancel invitation group response V2
func (m *ModelsCancelInvitationGroupResponseV2) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCancelInvitationGroupResponseV2) validateGroupID(formats strfmt.Registry) error {

	if err := validate.Required("groupId", "body", m.GroupID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCancelInvitationGroupResponseV2) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCancelInvitationGroupResponseV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCancelInvitationGroupResponseV2) UnmarshalBinary(b []byte) error {
	var res ModelsCancelInvitationGroupResponseV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

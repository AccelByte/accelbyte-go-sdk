// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserInvitationHistory Model user invitation history
//
// swagger:model Model user invitation history.
type ModelUserInvitationHistory struct {

	// accepted
	// Required: true
	Accepted *bool `json:"accepted"`

	// invitee
	// Required: true
	Invitee *string `json:"invitee"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Model user invitation history
func (m *ModelUserInvitationHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAccepted(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInvitee(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserInvitationHistory) validateAccepted(formats strfmt.Registry) error {

	if err := validate.Required("accepted", "body", m.Accepted); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInvitationHistory) validateInvitee(formats strfmt.Registry) error {

	if err := validate.Required("invitee", "body", m.Invitee); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInvitationHistory) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserInvitationHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserInvitationHistory) UnmarshalBinary(b []byte) error {
	var res ModelUserInvitationHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

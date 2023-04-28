// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPartyMembers Models party members
//
// swagger:model Models party members.
type ModelsPartyMembers struct {

	// partyid
	// Required: true
	PartyID *string `json:"partyID"`

	// userids
	// Required: true
	UserIDs []string `json:"userIDs"`
}

// Validate validates this Models party members
func (m *ModelsPartyMembers) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserIDs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPartyMembers) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("partyID", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPartyMembers) validateUserIDs(formats strfmt.Registry) error {

	if err := validate.Required("userIDs", "body", m.UserIDs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPartyMembers) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPartyMembers) UnmarshalBinary(b []byte) error {
	var res ModelsPartyMembers
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

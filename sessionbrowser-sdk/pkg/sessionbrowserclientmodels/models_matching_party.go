// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionbrowserclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMatchingParty Models matching party
//
// swagger:model Models matching party.
type ModelsMatchingParty struct {

	// match_attributes
	MatchAttributes *ModelsMatchAttributes `json:"match_attributes,omitempty"`

	// party_attributes
	PartyAttributes interface{} `json:"party_attributes,omitempty"`

	// party_id
	// Required: true
	PartyID string `json:"party_id"`

	// party_members
	PartyMembers []*ModelsPartyMember `json:"party_members,omitempty"`
}

// Validate validates this Models matching party
func (m *ModelsMatchingParty) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMatchingParty) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("party_id", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchingParty) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchingParty) UnmarshalBinary(b []byte) error {
	var res ModelsMatchingParty
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

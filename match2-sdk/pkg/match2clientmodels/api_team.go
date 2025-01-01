// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APITeam Api team
//
// swagger:model Api team.
type APITeam struct {

	// parties
	Parties []*APIParty `json:"parties,omitempty"`

	// teamid
	TeamID string `json:"teamID,omitempty"`

	// userids
	UserIDs []string `json:"userIDs,omitempty"`
}

// Validate validates this Api team
func (m *APITeam) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APITeam) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APITeam) UnmarshalBinary(b []byte) error {
	var res APITeam
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

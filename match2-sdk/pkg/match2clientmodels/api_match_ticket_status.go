// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIMatchTicketStatus Api match ticket status
//
// swagger:model Api match ticket status.
type APIMatchTicketStatus struct {

	// matchfound
	// Required: true
	MatchFound *bool `json:"matchFound"`

	// matchpool
	MatchPool string `json:"matchPool,omitempty"`

	// matchticketid
	MatchTicketID string `json:"matchTicketID,omitempty"`

	// proposedproposal
	ProposedProposal *APIProposedProposal `json:"proposedProposal,omitempty"`

	// sessionid
	// Required: true
	SessionID *string `json:"sessionID"`
}

// Validate validates this Api match ticket status
func (m *APIMatchTicketStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchFound(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIMatchTicketStatus) validateMatchFound(formats strfmt.Registry) error {

	if err := validate.Required("matchFound", "body", m.MatchFound); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchTicketStatus) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("sessionID", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIMatchTicketStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMatchTicketStatus) UnmarshalBinary(b []byte) error {
	var res APIMatchTicketStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

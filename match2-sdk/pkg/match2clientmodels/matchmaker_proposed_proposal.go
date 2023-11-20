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

// MatchmakerProposedProposal Matchmaker proposed proposal
//
// swagger:model Matchmaker proposed proposal.
type MatchmakerProposedProposal struct {

	// backfillid
	// Required: true
	BackfillID *string `json:"BackfillID"`

	// proposalid
	// Required: true
	ProposalID *string `json:"ProposalID"`

	// status
	// Required: true
	Status *string `json:"Status"`
}

// Validate validates this Matchmaker proposed proposal
func (m *MatchmakerProposedProposal) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBackfillID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProposalID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *MatchmakerProposedProposal) validateBackfillID(formats strfmt.Registry) error {

	if err := validate.Required("BackfillID", "body", m.BackfillID); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerProposedProposal) validateProposalID(formats strfmt.Registry) error {

	if err := validate.Required("ProposalID", "body", m.ProposalID); err != nil {
		return err
	}

	return nil
}

func (m *MatchmakerProposedProposal) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *MatchmakerProposedProposal) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *MatchmakerProposedProposal) UnmarshalBinary(b []byte) error {
	var res MatchmakerProposedProposal
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

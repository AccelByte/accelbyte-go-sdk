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

// APIProposedProposal Api proposed proposal
//
// swagger:model Api proposed proposal.
type APIProposedProposal struct {

	// backfillid
	BackfillID string `json:"backfillID,omitempty"`

	// proposalid
	ProposalID string `json:"proposalID,omitempty"`

	// status
	Status string `json:"status,omitempty"`
}

// Validate validates this Api proposed proposal
func (m *APIProposedProposal) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIProposedProposal) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIProposedProposal) UnmarshalBinary(b []byte) error {
	var res APIProposedProposal
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsProposedProposal Models proposed proposal
//
// swagger:model Models proposed proposal.
type ModelsProposedProposal struct {

	// backfillid
	BackfillID string `json:"BackfillID,omitempty"`

	// proposalid
	ProposalID string `json:"ProposalID,omitempty"`

	// status
	Status string `json:"Status,omitempty"`
}

// Validate validates this Models proposed proposal
func (m *ModelsProposedProposal) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsProposedProposal) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsProposedProposal) UnmarshalBinary(b []byte) error {
	var res ModelsProposedProposal
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

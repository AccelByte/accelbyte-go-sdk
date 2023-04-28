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

// APIBackFillRejectRequest Api back fill reject request
//
// swagger:model Api back fill reject request.
type APIBackFillRejectRequest struct {

	// proposalid
	// Required: true
	ProposalID *string `json:"proposalId"`

	// stop
	// Required: true
	Stop *bool `json:"stop"`
}

// Validate validates this Api back fill reject request
func (m *APIBackFillRejectRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateProposalID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStop(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIBackFillRejectRequest) validateProposalID(formats strfmt.Registry) error {

	if err := validate.Required("proposalId", "body", m.ProposalID); err != nil {
		return err
	}

	return nil
}

func (m *APIBackFillRejectRequest) validateStop(formats strfmt.Registry) error {

	if err := validate.Required("stop", "body", m.Stop); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIBackFillRejectRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIBackFillRejectRequest) UnmarshalBinary(b []byte) error {
	var res APIBackFillRejectRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

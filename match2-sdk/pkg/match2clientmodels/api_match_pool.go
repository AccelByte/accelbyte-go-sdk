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

// APIMatchPool Api match pool
//
// swagger:model Api match pool.
type APIMatchPool struct {

	// auto_accept_backfill_proposal
	// Required: true
	AutoAcceptBackfillProposal *bool `json:"auto_accept_backfill_proposal"`

	// backfill_proposal_expiration_seconds
	// Required: true
	// Format: int32
	BackfillProposalExpirationSeconds *int32 `json:"backfill_proposal_expiration_seconds"`

	// backfill_ticket_expiration_seconds
	// Required: true
	// Format: int32
	BackfillTicketExpirationSeconds *int32 `json:"backfill_ticket_expiration_seconds"`

	// best_latency_calculation_method
	BestLatencyCalculationMethod string `json:"best_latency_calculation_method,omitempty"`

	// crossplay_disabled
	CrossplayDisabled bool `json:"crossplay_disabled"`

	// match_function
	// Required: true
	MatchFunction *string `json:"match_function"`

	// match_function_override
	// Required: true
	MatchFunctionOverride *APIMatchFunctionOverride `json:"match_function_override"`

	// name
	// Required: true
	Name *string `json:"name"`

	// platform_group_enabled
	PlatformGroupEnabled bool `json:"platform_group_enabled"`

	// rule_set
	// Required: true
	RuleSet *string `json:"rule_set"`

	// session_template
	// Required: true
	SessionTemplate *string `json:"session_template"`

	// ticket_expiration_seconds
	// Required: true
	// Format: int32
	TicketExpirationSeconds *int32 `json:"ticket_expiration_seconds"`
}

// Validate validates this Api match pool
func (m *APIMatchPool) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoAcceptBackfillProposal(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBackfillProposalExpirationSeconds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBackfillTicketExpirationSeconds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchFunction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchFunctionOverride(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRuleSet(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTemplate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketExpirationSeconds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIMatchPool) validateAutoAcceptBackfillProposal(formats strfmt.Registry) error {

	if err := validate.Required("auto_accept_backfill_proposal", "body", m.AutoAcceptBackfillProposal); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchPool) validateBackfillProposalExpirationSeconds(formats strfmt.Registry) error {

	if err := validate.Required("backfill_proposal_expiration_seconds", "body", m.BackfillProposalExpirationSeconds); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchPool) validateBackfillTicketExpirationSeconds(formats strfmt.Registry) error {

	if err := validate.Required("backfill_ticket_expiration_seconds", "body", m.BackfillTicketExpirationSeconds); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchPool) validateMatchFunction(formats strfmt.Registry) error {

	if err := validate.Required("match_function", "body", m.MatchFunction); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchPool) validateMatchFunctionOverride(formats strfmt.Registry) error {

	if err := validate.Required("match_function_override", "body", m.MatchFunctionOverride); err != nil {
		return err
	}

	if m.MatchFunctionOverride != nil {
		if err := m.MatchFunctionOverride.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("match_function_override")
			}
			return err
		}
	}

	return nil
}

func (m *APIMatchPool) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchPool) validateRuleSet(formats strfmt.Registry) error {

	if err := validate.Required("rule_set", "body", m.RuleSet); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchPool) validateSessionTemplate(formats strfmt.Registry) error {

	if err := validate.Required("session_template", "body", m.SessionTemplate); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchPool) validateTicketExpirationSeconds(formats strfmt.Registry) error {

	if err := validate.Required("ticket_expiration_seconds", "body", m.TicketExpirationSeconds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIMatchPool) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMatchPool) UnmarshalBinary(b []byte) error {
	var res APIMatchPool
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

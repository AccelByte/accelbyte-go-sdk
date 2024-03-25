// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRuleSet Models rule set
//
// swagger:model Models rule set.
type ModelsRuleSet struct {

	// alliance
	Alliance *ModelsAllianceRule `json:"alliance,omitempty"`

	// alliance_flexing_rule
	AllianceFlexingRule []*ModelsAllianceFlexingRule `json:"alliance_flexing_rule,omitempty"`

	// batch_size
	// Required: true
	// Format: int32
	BatchSize *int32 `json:"batch_size"`

	// bucket_mmr_rule
	BucketMmrRule *ModelsBucketMMRRule `json:"bucket_mmr_rule,omitempty"`

	// flexing_rule
	FlexingRule []*ModelsFlexingRule `json:"flexing_rule,omitempty"`

	// match_options
	MatchOptions *ModelsMatchOptionRule `json:"match_options,omitempty"`

	// matching_rule
	MatchingRule []*ModelsMatchingRule `json:"matching_rule,omitempty"`

	// rebalance_enable
	// Required: true
	RebalanceEnable *bool `json:"rebalance_enable"`

	// sort_ticket
	SortTicket *ModelsSortTicket `json:"sort_ticket,omitempty"`

	// sort_tickets
	SortTickets []*ModelsSortTicketRule `json:"sort_tickets,omitempty"`

	// sub_game_modes
	SubGameModes map[string]ModelsSubGameMode `json:"sub_game_modes,omitempty"`

	// ticket_flexing_selection
	// Required: true
	TicketFlexingSelection *string `json:"ticket_flexing_selection"`

	// ticket_flexing_selections
	TicketFlexingSelections []*ModelsSelectionRule `json:"ticket_flexing_selections,omitempty"`

	// use_newest_ticket_for_flexing
	UseNewestTicketForFlexing bool `json:"use_newest_ticket_for_flexing"`
}

// Validate validates this Models rule set
func (m *ModelsRuleSet) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBatchSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRebalanceEnable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketFlexingSelection(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRuleSet) validateBatchSize(formats strfmt.Registry) error {

	if err := validate.Required("batch_size", "body", m.BatchSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleSet) validateRebalanceEnable(formats strfmt.Registry) error {

	if err := validate.Required("rebalance_enable", "body", m.RebalanceEnable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleSet) validateTicketFlexingSelection(formats strfmt.Registry) error {

	if err := validate.Required("ticket_flexing_selection", "body", m.TicketFlexingSelection); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRuleSet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRuleSet) UnmarshalBinary(b []byte) error {
	var res ModelsRuleSet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

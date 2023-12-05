// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUpdateRuleset Models update ruleset
//
// swagger:model Models update ruleset.
type ModelsUpdateRuleset struct {

	// alliance
	// Required: true
	Alliance *ModelsUpdateAllianceRule `json:"alliance"`

	// alliance_flexing_rule
	// Required: true
	AllianceFlexingRule []*ModelsAllianceFlexingRule `json:"alliance_flexing_rule"`

	// batch_size
	// Required: true
	// Format: int32
	BatchSize *int32 `json:"batch_size"`

	// bucket_mmr_rule
	BucketMmrRule *ModelsBucketMMRRule `json:"bucket_mmr_rule,omitempty"`

	// flexingrules
	FlexingRules []*ModelsFlexingRule `json:"flexingRules,omitempty"`

	// match_options
	MatchOptions *ModelsMatchOptionRule `json:"match_options,omitempty"`

	// matchingrules
	MatchingRules []*ModelsMatchingRule `json:"matchingRules,omitempty"`

	// sort_ticket
	// Required: true
	SortTicket *ModelsSortTicket `json:"sort_ticket"`

	// sort_tickets
	// Required: true
	SortTickets []*ModelsSortTicketRule `json:"sort_tickets"`

	// sub_game_modes
	SubGameModes ModelsUpdateRulesetSubGameModes `json:"sub_game_modes,omitempty"`

	// ticket_flexing_selection
	// Enum: ['newest', 'oldest', 'pivot', 'random']
	// Required: true
	TicketFlexingSelection *string `json:"ticket_flexing_selection"`

	// ticket_flexing_selections
	// Required: true
	TicketFlexingSelections []*ModelsSelectionRule `json:"ticket_flexing_selections"`

	// use_newest_ticket_for_flexing
	UseNewestTicketForFlexing bool `json:"use_newest_ticket_for_flexing"`
}

// Validate validates this Models update ruleset
func (m *ModelsUpdateRuleset) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAlliance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllianceFlexingRule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBatchSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSortTicket(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSortTickets(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketFlexingSelection(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketFlexingSelections(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateRuleset) validateAlliance(formats strfmt.Registry) error {

	if err := validate.Required("alliance", "body", m.Alliance); err != nil {
		return err
	}

	if m.Alliance != nil {
		if err := m.Alliance.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("alliance")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsUpdateRuleset) validateAllianceFlexingRule(formats strfmt.Registry) error {

	if err := validate.Required("alliance_flexing_rule", "body", m.AllianceFlexingRule); err != nil {
		return err
	}

	for i := 0; i < len(m.AllianceFlexingRule); i++ {
		if swag.IsZero(m.AllianceFlexingRule[i]) { // not required
			continue
		}

		if m.AllianceFlexingRule[i] != nil {
			if err := m.AllianceFlexingRule[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("alliance_flexing_rule" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsUpdateRuleset) validateBatchSize(formats strfmt.Registry) error {

	if err := validate.Required("batch_size", "body", m.BatchSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateRuleset) validateSortTicket(formats strfmt.Registry) error {

	if err := validate.Required("sort_ticket", "body", m.SortTicket); err != nil {
		return err
	}

	if m.SortTicket != nil {
		if err := m.SortTicket.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("sort_ticket")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsUpdateRuleset) validateSortTickets(formats strfmt.Registry) error {

	if err := validate.Required("sort_tickets", "body", m.SortTickets); err != nil {
		return err
	}

	for i := 0; i < len(m.SortTickets); i++ {
		if swag.IsZero(m.SortTickets[i]) { // not required
			continue
		}

		if m.SortTickets[i] != nil {
			if err := m.SortTickets[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("sort_tickets" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var modelsUpdateRulesetTypeTicketFlexingSelectionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NEWEST", "OLDEST", "PIVOT", "RANDOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsUpdateRulesetTypeTicketFlexingSelectionPropEnum = append(modelsUpdateRulesetTypeTicketFlexingSelectionPropEnum, v)
	}
}

const (

	// ModelsUpdateRulesetTicketFlexingSelectionNEWEST captures enum value "NEWEST"
	ModelsUpdateRulesetTicketFlexingSelectionNEWEST string = "NEWEST"

	// ModelsUpdateRulesetTicketFlexingSelectionOLDEST captures enum value "OLDEST"
	ModelsUpdateRulesetTicketFlexingSelectionOLDEST string = "OLDEST"

	// ModelsUpdateRulesetTicketFlexingSelectionPIVOT captures enum value "PIVOT"
	ModelsUpdateRulesetTicketFlexingSelectionPIVOT string = "PIVOT"

	// ModelsUpdateRulesetTicketFlexingSelectionRANDOM captures enum value "RANDOM"
	ModelsUpdateRulesetTicketFlexingSelectionRANDOM string = "RANDOM"
)

// prop value enum
func (m *ModelsUpdateRuleset) validateTicketFlexingSelectionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsUpdateRulesetTypeTicketFlexingSelectionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsUpdateRuleset) validateTicketFlexingSelection(formats strfmt.Registry) error {

	if err := validate.Required("ticket_flexing_selection", "body", m.TicketFlexingSelection); err != nil {
		return err
	}

	// value enum
	if err := m.validateTicketFlexingSelectionEnum("ticket_flexing_selection", "body", *m.TicketFlexingSelection); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateRuleset) validateTicketFlexingSelections(formats strfmt.Registry) error {

	if err := validate.Required("ticket_flexing_selections", "body", m.TicketFlexingSelections); err != nil {
		return err
	}

	for i := 0; i < len(m.TicketFlexingSelections); i++ {
		if swag.IsZero(m.TicketFlexingSelections[i]) { // not required
			continue
		}

		if m.TicketFlexingSelections[i] != nil {
			if err := m.TicketFlexingSelections[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("ticket_flexing_selections" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateRuleset) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateRuleset) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateRuleset
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

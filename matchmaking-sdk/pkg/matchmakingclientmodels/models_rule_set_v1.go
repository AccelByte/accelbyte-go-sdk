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

// ModelsRuleSetV1 Models rule set V1
//
// swagger:model Models rule set V1.
type ModelsRuleSetV1 struct {

	// alliance
	// Required: true
	Alliance *ModelsAllianceRuleV1 `json:"alliance"`

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
	// Required: true
	FlexingRules []*ModelsFlexingRule `json:"flexingRules"`

	// match_options
	// Required: true
	MatchOptions *ModelsMatchOptionRule `json:"match_options"`

	// matchingrules
	// Required: true
	MatchingRules []*ModelsMatchingRule `json:"matchingRules"`

	// sort_ticket
	// Required: true
	SortTicket *ModelsSortTicket `json:"sort_ticket"`

	// sort_tickets
	// Required: true
	SortTickets []*ModelsSortTicketRule `json:"sort_tickets"`

	// sub_game_modes
	// Required: true
	SubGameModes map[string]ModelsSubGameMode `json:"sub_game_modes"`

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

// Validate validates this Models rule set V1
func (m *ModelsRuleSetV1) Validate(formats strfmt.Registry) error {
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
	if err := m.validateFlexingRules(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchOptions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchingRules(formats); err != nil {
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

func (m *ModelsRuleSetV1) validateAlliance(formats strfmt.Registry) error {

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

func (m *ModelsRuleSetV1) validateAllianceFlexingRule(formats strfmt.Registry) error {

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

func (m *ModelsRuleSetV1) validateBatchSize(formats strfmt.Registry) error {

	if err := validate.Required("batch_size", "body", m.BatchSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleSetV1) validateFlexingRules(formats strfmt.Registry) error {

	if err := validate.Required("flexingRules", "body", m.FlexingRules); err != nil {
		return err
	}

	for i := 0; i < len(m.FlexingRules); i++ {
		if swag.IsZero(m.FlexingRules[i]) { // not required
			continue
		}

		if m.FlexingRules[i] != nil {
			if err := m.FlexingRules[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("flexingRules" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsRuleSetV1) validateMatchOptions(formats strfmt.Registry) error {

	if err := validate.Required("match_options", "body", m.MatchOptions); err != nil {
		return err
	}

	if m.MatchOptions != nil {
		if err := m.MatchOptions.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("match_options")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsRuleSetV1) validateMatchingRules(formats strfmt.Registry) error {

	if err := validate.Required("matchingRules", "body", m.MatchingRules); err != nil {
		return err
	}

	for i := 0; i < len(m.MatchingRules); i++ {
		if swag.IsZero(m.MatchingRules[i]) { // not required
			continue
		}

		if m.MatchingRules[i] != nil {
			if err := m.MatchingRules[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("matchingRules" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsRuleSetV1) validateSortTicket(formats strfmt.Registry) error {

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

func (m *ModelsRuleSetV1) validateSortTickets(formats strfmt.Registry) error {

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

func (m *ModelsRuleSetV1) validateSubGameModes(formats strfmt.Registry) error {

	if err := validate.Required("sub_game_modes", "body", m.SubGameModes); err != nil {
		return err
	}

	for k := range m.SubGameModes {

		if err := validate.Required("sub_game_modes"+"."+k, "body", m.SubGameModes[k]); err != nil {
			return err
		}
		if val, ok := m.SubGameModes[k]; ok {
			if err := val.Validate(formats); err != nil {
				return err
			}
		}

	}

	return nil
}

var modelsRuleSetV1TypeTicketFlexingSelectionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NEWEST", "OLDEST", "PIVOT", "RANDOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsRuleSetV1TypeTicketFlexingSelectionPropEnum = append(modelsRuleSetV1TypeTicketFlexingSelectionPropEnum, v)
	}
}

const (

	// ModelsRuleSetV1TicketFlexingSelectionNEWEST captures enum value "NEWEST"
	ModelsRuleSetV1TicketFlexingSelectionNEWEST string = "NEWEST"

	// ModelsRuleSetV1TicketFlexingSelectionOLDEST captures enum value "OLDEST"
	ModelsRuleSetV1TicketFlexingSelectionOLDEST string = "OLDEST"

	// ModelsRuleSetV1TicketFlexingSelectionPIVOT captures enum value "PIVOT"
	ModelsRuleSetV1TicketFlexingSelectionPIVOT string = "PIVOT"

	// ModelsRuleSetV1TicketFlexingSelectionRANDOM captures enum value "RANDOM"
	ModelsRuleSetV1TicketFlexingSelectionRANDOM string = "RANDOM"
)

// prop value enum
func (m *ModelsRuleSetV1) validateTicketFlexingSelectionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsRuleSetV1TypeTicketFlexingSelectionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsRuleSetV1) validateTicketFlexingSelection(formats strfmt.Registry) error {

	if err := validate.Required("ticket_flexing_selection", "body", m.TicketFlexingSelection); err != nil {
		return err
	}

	// value enum
	if err := m.validateTicketFlexingSelectionEnum("ticket_flexing_selection", "body", *m.TicketFlexingSelection); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleSetV1) validateTicketFlexingSelections(formats strfmt.Registry) error {

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
func (m *ModelsRuleSetV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRuleSetV1) UnmarshalBinary(b []byte) error {
	var res ModelsRuleSetV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

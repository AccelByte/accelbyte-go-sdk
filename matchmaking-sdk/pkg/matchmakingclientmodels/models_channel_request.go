// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsChannelRequest Models channel request
//
// swagger:model Models channel request.
type ModelsChannelRequest struct {

	// blocked_player_option
	// Enum: ['blockedPlayerCanMatch', 'blockedPlayerCanMatchOnDifferentTeam', 'blockedPlayerCannotMatch']
	BlockedPlayerOption string `json:"blocked_player_option,omitempty"`

	// deployment
	// Required: true
	Deployment string `json:"deployment"`

	// description
	// Required: true
	Description string `json:"description"`

	// find_match_timeout_seconds
	// Required: true
	// Format: int32
	FindMatchTimeoutSeconds int32 `json:"find_match_timeout_seconds"`

	// game_mode
	// Required: true
	GameMode string `json:"game_mode"`

	// joinable
	Joinable *bool `json:"joinable"`

	// max_delay_ms
	// Required: true
	// Format: int32
	MaxDelayMs int32 `json:"max_delay_ms"`

	// region_expansion_range_ms
	// Format: int32
	RegionExpansionRangeMs int32 `json:"region_expansion_range_ms,omitempty"`

	// region_expansion_rate_ms
	// Format: int32
	RegionExpansionRateMs int32 `json:"region_expansion_rate_ms,omitempty"`

	// region_latency_initial_range_ms
	// Format: int32
	RegionLatencyInitialRangeMs int32 `json:"region_latency_initial_range_ms,omitempty"`

	// region_latency_max_ms
	// Format: int32
	RegionLatencyMaxMs int32 `json:"region_latency_max_ms,omitempty"`

	// rule_set
	// Required: true
	RuleSet *ModelsRuleSet `json:"rule_set"`

	// session_queue_timeout_seconds
	// Required: true
	// Format: int32
	SessionQueueTimeoutSeconds int32 `json:"session_queue_timeout_seconds"`

	// social_matchmaking
	SocialMatchmaking *bool `json:"social_matchmaking"`

	// sub_gamemode_selection
	// Enum: ['random', 'ticketOrder']
	SubGamemodeSelection *string `json:"sub_gamemode_selection,omitempty"`

	// ticket_observability_enable
	TicketObservabilityEnable bool `json:"ticket_observability_enable"`

	// use_sub_gamemode
	UseSubGamemode *bool `json:"use_sub_gamemode"`
}

// Validate validates this Models channel request
func (m *ModelsChannelRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFindMatchTimeoutSeconds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxDelayMs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRuleSet(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionQueueTimeoutSeconds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsChannelRequestTypeBlockedPlayerOptionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["BLOCKEDPLAYERCANMATCH", "BLOCKEDPLAYERCANMATCHONDIFFERENTTEAM", "BLOCKEDPLAYERCANNOTMATCH"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsChannelRequestTypeBlockedPlayerOptionPropEnum = append(modelsChannelRequestTypeBlockedPlayerOptionPropEnum, v)
	}
}

const (

	// ModelsChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANMATCH captures enum value "BLOCKEDPLAYERCANMATCH"
	ModelsChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANMATCH string = "BLOCKEDPLAYERCANMATCH"

	// ModelsChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANMATCHONDIFFERENTTEAM captures enum value "BLOCKEDPLAYERCANMATCHONDIFFERENTTEAM"
	ModelsChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANMATCHONDIFFERENTTEAM string = "BLOCKEDPLAYERCANMATCHONDIFFERENTTEAM"

	// ModelsChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANNOTMATCH captures enum value "BLOCKEDPLAYERCANNOTMATCH"
	ModelsChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANNOTMATCH string = "BLOCKEDPLAYERCANNOTMATCH"
)

// prop value enum
func (m *ModelsChannelRequest) validateBlockedPlayerOptionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsChannelRequestTypeBlockedPlayerOptionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsChannelRequest) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelRequest) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelRequest) validateFindMatchTimeoutSeconds(formats strfmt.Registry) error {

	if err := validate.Required("find_match_timeout_seconds", "body", m.FindMatchTimeoutSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelRequest) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("game_mode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelRequest) validateMaxDelayMs(formats strfmt.Registry) error {

	if err := validate.Required("max_delay_ms", "body", m.MaxDelayMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelRequest) validateRuleSet(formats strfmt.Registry) error {

	if err := validate.Required("rule_set", "body", m.RuleSet); err != nil {
		return err
	}

	if m.RuleSet != nil {
		if err := m.RuleSet.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("rule_set")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsChannelRequest) validateSessionQueueTimeoutSeconds(formats strfmt.Registry) error {

	if err := validate.Required("session_queue_timeout_seconds", "body", m.SessionQueueTimeoutSeconds); err != nil {
		return err
	}

	return nil
}

var modelsChannelRequestTypeSubGamemodeSelectionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["RANDOM", "TICKETORDER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsChannelRequestTypeSubGamemodeSelectionPropEnum = append(modelsChannelRequestTypeSubGamemodeSelectionPropEnum, v)
	}
}

const (

	// ModelsChannelRequestSubGamemodeSelectionRANDOM captures enum value "RANDOM"
	ModelsChannelRequestSubGamemodeSelectionRANDOM string = "RANDOM"

	// ModelsChannelRequestSubGamemodeSelectionTICKETORDER captures enum value "TICKETORDER"
	ModelsChannelRequestSubGamemodeSelectionTICKETORDER string = "TICKETORDER"
)

// prop value enum
func (m *ModelsChannelRequest) validateSubGamemodeSelectionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsChannelRequestTypeSubGamemodeSelectionPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChannelRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChannelRequest) UnmarshalBinary(b []byte) error {
	var res ModelsChannelRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

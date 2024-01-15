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

// ModelsUpdateChannelRequest Models update channel request
//
// swagger:model Models update channel request.
type ModelsUpdateChannelRequest struct {

	// blocked_player_option
	// Enum: ['blockedPlayerCanMatch', 'blockedPlayerCanMatchOnDifferentTeam', 'blockedPlayerCannotMatch']
	BlockedPlayerOption string `json:"blocked_player_option,omitempty"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// description
	// Required: true
	Description *string `json:"description"`

	// findmatchtimeoutseconds
	// Required: true
	// Format: int32
	FindMatchTimeoutSeconds *int32 `json:"findMatchTimeoutSeconds"`

	// joinable
	// Required: true
	Joinable *bool `json:"joinable"`

	// max_delay_ms
	// Required: true
	// Format: int32
	MaxDelayMs *int32 `json:"max_delay_ms"`

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

	// ruleset
	// Required: true
	RuleSet *ModelsUpdateRuleset `json:"ruleSet"`

	// sessionqueuetimeoutseconds
	// Required: true
	// Format: int32
	SessionQueueTimeoutSeconds *int32 `json:"sessionQueueTimeoutSeconds"`

	// socialmatchmaking
	// Required: true
	SocialMatchmaking *bool `json:"socialMatchmaking"`

	// sub_gamemode_selection
	// Enum: ['random', 'ticketOrder']
	SubGamemodeSelection *string `json:"sub_gamemode_selection,omitempty"`

	// ticket_observability_enable
	TicketObservabilityEnable bool `json:"ticket_observability_enable"`

	// use_sub_gamemode
	// Required: true
	UseSubGamemode *bool `json:"use_sub_gamemode"`
}

// Validate validates this Models update channel request
func (m *ModelsUpdateChannelRequest) Validate(formats strfmt.Registry) error {
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
	if err := m.validateJoinable(formats); err != nil {
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
	if err := m.validateSocialMatchmaking(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUseSubGamemode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsUpdateChannelRequestTypeBlockedPlayerOptionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["BLOCKEDPLAYERCANMATCH", "BLOCKEDPLAYERCANMATCHONDIFFERENTTEAM", "BLOCKEDPLAYERCANNOTMATCH"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsUpdateChannelRequestTypeBlockedPlayerOptionPropEnum = append(modelsUpdateChannelRequestTypeBlockedPlayerOptionPropEnum, v)
	}
}

const (

	// ModelsUpdateChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANMATCH captures enum value "BLOCKEDPLAYERCANMATCH"
	ModelsUpdateChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANMATCH string = "BLOCKEDPLAYERCANMATCH"

	// ModelsUpdateChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANMATCHONDIFFERENTTEAM captures enum value "BLOCKEDPLAYERCANMATCHONDIFFERENTTEAM"
	ModelsUpdateChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANMATCHONDIFFERENTTEAM string = "BLOCKEDPLAYERCANMATCHONDIFFERENTTEAM"

	// ModelsUpdateChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANNOTMATCH captures enum value "BLOCKEDPLAYERCANNOTMATCH"
	ModelsUpdateChannelRequestBlockedPlayerOptionBLOCKEDPLAYERCANNOTMATCH string = "BLOCKEDPLAYERCANNOTMATCH"
)

// prop value enum
func (m *ModelsUpdateChannelRequest) validateBlockedPlayerOptionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsUpdateChannelRequestTypeBlockedPlayerOptionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsUpdateChannelRequest) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateChannelRequest) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateChannelRequest) validateFindMatchTimeoutSeconds(formats strfmt.Registry) error {

	if err := validate.Required("findMatchTimeoutSeconds", "body", m.FindMatchTimeoutSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateChannelRequest) validateJoinable(formats strfmt.Registry) error {

	if err := validate.Required("joinable", "body", m.Joinable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateChannelRequest) validateMaxDelayMs(formats strfmt.Registry) error {

	if err := validate.Required("max_delay_ms", "body", m.MaxDelayMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateChannelRequest) validateRuleSet(formats strfmt.Registry) error {

	if err := validate.Required("ruleSet", "body", m.RuleSet); err != nil {
		return err
	}

	if m.RuleSet != nil {
		if err := m.RuleSet.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("ruleSet")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsUpdateChannelRequest) validateSessionQueueTimeoutSeconds(formats strfmt.Registry) error {

	if err := validate.Required("sessionQueueTimeoutSeconds", "body", m.SessionQueueTimeoutSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateChannelRequest) validateSocialMatchmaking(formats strfmt.Registry) error {

	if err := validate.Required("socialMatchmaking", "body", m.SocialMatchmaking); err != nil {
		return err
	}

	return nil
}

var modelsUpdateChannelRequestTypeSubGamemodeSelectionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["RANDOM", "TICKETORDER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsUpdateChannelRequestTypeSubGamemodeSelectionPropEnum = append(modelsUpdateChannelRequestTypeSubGamemodeSelectionPropEnum, v)
	}
}

const (

	// ModelsUpdateChannelRequestSubGamemodeSelectionRANDOM captures enum value "RANDOM"
	ModelsUpdateChannelRequestSubGamemodeSelectionRANDOM string = "RANDOM"

	// ModelsUpdateChannelRequestSubGamemodeSelectionTICKETORDER captures enum value "TICKETORDER"
	ModelsUpdateChannelRequestSubGamemodeSelectionTICKETORDER string = "TICKETORDER"
)

// prop value enum
func (m *ModelsUpdateChannelRequest) validateSubGamemodeSelectionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsUpdateChannelRequestTypeSubGamemodeSelectionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsUpdateChannelRequest) validateUseSubGamemode(formats strfmt.Registry) error {

	if err := validate.Required("use_sub_gamemode", "body", m.UseSubGamemode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateChannelRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateChannelRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateChannelRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// ModelsChannelV1 Models channel V1
//
// swagger:model Models channel V1.
type ModelsChannelV1 struct {

	// blocked_player_option
	// Required: true
	BlockedPlayerOption *string `json:"blocked_player_option"`

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

	// gamemode
	// Required: true
	GameMode *string `json:"gameMode"`

	// joinable
	// Required: true
	Joinable *bool `json:"joinable"`

	// max_delay_ms
	// Required: true
	// Format: int32
	MaxDelayMs *int32 `json:"max_delay_ms"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// region_expansion_range_ms
	// Required: true
	// Format: int32
	RegionExpansionRangeMs *int32 `json:"region_expansion_range_ms"`

	// region_expansion_rate_ms
	// Required: true
	// Format: int32
	RegionExpansionRateMs *int32 `json:"region_expansion_rate_ms"`

	// region_latency_initial_range_ms
	// Required: true
	// Format: int32
	RegionLatencyInitialRangeMs *int32 `json:"region_latency_initial_range_ms"`

	// region_latency_max_ms
	// Required: true
	// Format: int32
	RegionLatencyMaxMs *int32 `json:"region_latency_max_ms"`

	// ruleset
	RuleSet *ModelsRuleSetV1 `json:"ruleSet,omitempty"`

	// sessionqueuetimeoutseconds
	// Required: true
	// Format: int32
	SessionQueueTimeoutSeconds *int32 `json:"sessionQueueTimeoutSeconds"`

	// slug
	// Required: true
	Slug *string `json:"slug"`

	// socialmatchmaking
	// Required: true
	SocialMatchmaking *bool `json:"socialMatchmaking"`

	// sub_gamemode_selection
	// Required: true
	SubGamemodeSelection *string `json:"sub_gamemode_selection"`

	// ticket_observability_enable
	TicketObservabilityEnable bool `json:"ticket_observability_enable"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// use_sub_gamemode
	// Required: true
	UseSubGamemode *bool `json:"use_sub_gamemode"`
}

// Validate validates this Models channel V1
func (m *ModelsChannelV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBlockedPlayerOption(formats); err != nil {
		res = append(res, err)
	}
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
	if err := m.validateJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxDelayMs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegionExpansionRangeMs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegionExpansionRateMs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegionLatencyInitialRangeMs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegionLatencyMaxMs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionQueueTimeoutSeconds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlug(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSocialMatchmaking(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubGamemodeSelection(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *ModelsChannelV1) validateBlockedPlayerOption(formats strfmt.Registry) error {

	if err := validate.Required("blocked_player_option", "body", m.BlockedPlayerOption); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateFindMatchTimeoutSeconds(formats strfmt.Registry) error {

	if err := validate.Required("findMatchTimeoutSeconds", "body", m.FindMatchTimeoutSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("gameMode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateJoinable(formats strfmt.Registry) error {

	if err := validate.Required("joinable", "body", m.Joinable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateMaxDelayMs(formats strfmt.Registry) error {

	if err := validate.Required("max_delay_ms", "body", m.MaxDelayMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateRegionExpansionRangeMs(formats strfmt.Registry) error {

	if err := validate.Required("region_expansion_range_ms", "body", m.RegionExpansionRangeMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateRegionExpansionRateMs(formats strfmt.Registry) error {

	if err := validate.Required("region_expansion_rate_ms", "body", m.RegionExpansionRateMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateRegionLatencyInitialRangeMs(formats strfmt.Registry) error {

	if err := validate.Required("region_latency_initial_range_ms", "body", m.RegionLatencyInitialRangeMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateRegionLatencyMaxMs(formats strfmt.Registry) error {

	if err := validate.Required("region_latency_max_ms", "body", m.RegionLatencyMaxMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateSessionQueueTimeoutSeconds(formats strfmt.Registry) error {

	if err := validate.Required("sessionQueueTimeoutSeconds", "body", m.SessionQueueTimeoutSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateSlug(formats strfmt.Registry) error {

	if err := validate.Required("slug", "body", m.Slug); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateSocialMatchmaking(formats strfmt.Registry) error {

	if err := validate.Required("socialMatchmaking", "body", m.SocialMatchmaking); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateSubGamemodeSelection(formats strfmt.Registry) error {

	if err := validate.Required("sub_gamemode_selection", "body", m.SubGamemodeSelection); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelV1) validateUseSubGamemode(formats strfmt.Registry) error {

	if err := validate.Required("use_sub_gamemode", "body", m.UseSubGamemode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChannelV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChannelV1) UnmarshalBinary(b []byte) error {
	var res ModelsChannelV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

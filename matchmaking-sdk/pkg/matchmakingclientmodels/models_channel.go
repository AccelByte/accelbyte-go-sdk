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

// ModelsChannel Models channel
//
// swagger:model Models channel.
type ModelsChannel struct {

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// description
	// Required: true
	Description *string `json:"description"`

	// find_match_timeout_seconds
	// Required: true
	// Format: int32
	FindMatchTimeoutSeconds *int32 `json:"find_match_timeout_seconds"`

	// game_mode
	// Required: true
	GameMode *string `json:"game_mode"`

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
	// Required: true
	Ruleset *ModelsRuleSet `json:"ruleset"`

	// session_queue_timeout_seconds
	// Required: true
	// Format: int32
	SessionQueueTimeoutSeconds *int32 `json:"session_queue_timeout_seconds"`

	// slug
	// Required: true
	Slug *string `json:"slug"`

	// social_matchmaking
	// Required: true
	SocialMatchmaking *bool `json:"social_matchmaking"`

	// ticket_observability_enable
	TicketObservabilityEnable bool `json:"ticket_observability_enable"`

	// updated_at
	// Required: true
	UpdatedAt *string `json:"updated_at"`

	// use_sub_gamemode
	// Required: true
	UseSubGamemode *bool `json:"use_sub_gamemode"`
}

// Validate validates this Models channel
func (m *ModelsChannel) Validate(formats strfmt.Registry) error {
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
	if err := m.validateRuleset(formats); err != nil {
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

func (m *ModelsChannel) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateFindMatchTimeoutSeconds(formats strfmt.Registry) error {

	if err := validate.Required("find_match_timeout_seconds", "body", m.FindMatchTimeoutSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("game_mode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateJoinable(formats strfmt.Registry) error {

	if err := validate.Required("joinable", "body", m.Joinable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateMaxDelayMs(formats strfmt.Registry) error {

	if err := validate.Required("max_delay_ms", "body", m.MaxDelayMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateRegionExpansionRangeMs(formats strfmt.Registry) error {

	if err := validate.Required("region_expansion_range_ms", "body", m.RegionExpansionRangeMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateRegionExpansionRateMs(formats strfmt.Registry) error {

	if err := validate.Required("region_expansion_rate_ms", "body", m.RegionExpansionRateMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateRegionLatencyInitialRangeMs(formats strfmt.Registry) error {

	if err := validate.Required("region_latency_initial_range_ms", "body", m.RegionLatencyInitialRangeMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateRegionLatencyMaxMs(formats strfmt.Registry) error {

	if err := validate.Required("region_latency_max_ms", "body", m.RegionLatencyMaxMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateRuleset(formats strfmt.Registry) error {

	if err := validate.Required("ruleset", "body", m.Ruleset); err != nil {
		return err
	}

	if m.Ruleset != nil {
		if err := m.Ruleset.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("ruleset")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsChannel) validateSessionQueueTimeoutSeconds(formats strfmt.Registry) error {

	if err := validate.Required("session_queue_timeout_seconds", "body", m.SessionQueueTimeoutSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateSlug(formats strfmt.Registry) error {

	if err := validate.Required("slug", "body", m.Slug); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateSocialMatchmaking(formats strfmt.Registry) error {

	if err := validate.Required("social_matchmaking", "body", m.SocialMatchmaking); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannel) validateUseSubGamemode(formats strfmt.Registry) error {

	if err := validate.Required("use_sub_gamemode", "body", m.UseSubGamemode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChannel) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChannel) UnmarshalBinary(b []byte) error {
	var res ModelsChannel
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

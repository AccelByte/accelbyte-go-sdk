// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsConfig Models config
//
// swagger:model Models config.
type ModelsConfig struct {

	// chatratelimitburst
	// Required: true
	// Format: int32
	ChatRateLimitBurst *int32 `json:"ChatRateLimitBurst"`

	// chatratelimitduration
	// Required: true
	// Format: int64
	ChatRateLimitDuration *int64 `json:"ChatRateLimitDuration"`

	// concurrentuserslimit
	// Required: true
	// Format: int32
	ConcurrentUsersLimit *int32 `json:"ConcurrentUsersLimit"`

	// enablemanualtopiccreation
	EnableManualTopicCreation bool `json:"EnableManualTopicCreation"`

	// enableprofanityfilter
	// Required: true
	EnableProfanityFilter *bool `json:"EnableProfanityFilter"`

	// filterappname
	// Required: true
	FilterAppName *string `json:"FilterAppName"`

	// filterparam
	// Required: true
	FilterParam *string `json:"FilterParam"`

	// filtertype
	// Required: true
	FilterType *string `json:"FilterType"`

	// generalratelimitburst
	// Required: true
	// Format: int32
	GeneralRateLimitBurst *int32 `json:"GeneralRateLimitBurst"`

	// generalratelimitduration
	// Required: true
	// Format: int64
	GeneralRateLimitDuration *int64 `json:"GeneralRateLimitDuration"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// shardcapacitylimit
	// Required: true
	// Format: int32
	ShardCapacityLimit *int32 `json:"ShardCapacityLimit"`

	// sharddefaultlimit
	// Required: true
	// Format: int32
	ShardDefaultLimit *int32 `json:"ShardDefaultLimit"`

	// shardhardlimit
	// Required: true
	// Format: int32
	ShardHardLimit *int32 `json:"ShardHardLimit"`

	// spamchatburst
	// Required: true
	// Format: int32
	SpamChatBurst *int32 `json:"SpamChatBurst"`

	// spamchatduration
	// Required: true
	// Format: int64
	SpamChatDuration *int64 `json:"SpamChatDuration"`

	// spammuteduration
	// Required: true
	// Format: int64
	SpamMuteDuration *int64 `json:"SpamMuteDuration"`

	// defaultdictionaryloaded
	DefaultDictionaryLoaded bool `json:"defaultDictionaryLoaded"`

	// enableclanchat
	EnableClanChat bool `json:"enableClanChat"`

	// enablepmsendplatformid
	EnablePmSendPlatformID bool `json:"enablePmSendPlatformId"`

	// maxchatmessagelength
	// Format: int32
	MaxChatMessageLength int32 `json:"maxChatMessageLength,omitempty"`

	// usedefaultdictionary
	UseDefaultDictionary bool `json:"useDefaultDictionary"`
}

// Validate validates this Models config
func (m *ModelsConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChatRateLimitBurst(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateChatRateLimitDuration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConcurrentUsersLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnableProfanityFilter(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFilterAppName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFilterParam(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFilterType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGeneralRateLimitBurst(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGeneralRateLimitDuration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShardCapacityLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShardDefaultLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShardHardLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSpamChatBurst(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSpamChatDuration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSpamMuteDuration(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsConfig) validateChatRateLimitBurst(formats strfmt.Registry) error {

	if err := validate.Required("ChatRateLimitBurst", "body", m.ChatRateLimitBurst); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateChatRateLimitDuration(formats strfmt.Registry) error {

	if err := validate.Required("ChatRateLimitDuration", "body", m.ChatRateLimitDuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateConcurrentUsersLimit(formats strfmt.Registry) error {

	if err := validate.Required("ConcurrentUsersLimit", "body", m.ConcurrentUsersLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateEnableProfanityFilter(formats strfmt.Registry) error {

	if err := validate.Required("EnableProfanityFilter", "body", m.EnableProfanityFilter); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateFilterAppName(formats strfmt.Registry) error {

	if err := validate.Required("FilterAppName", "body", m.FilterAppName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateFilterParam(formats strfmt.Registry) error {

	if err := validate.Required("FilterParam", "body", m.FilterParam); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateFilterType(formats strfmt.Registry) error {

	if err := validate.Required("FilterType", "body", m.FilterType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateGeneralRateLimitBurst(formats strfmt.Registry) error {

	if err := validate.Required("GeneralRateLimitBurst", "body", m.GeneralRateLimitBurst); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateGeneralRateLimitDuration(formats strfmt.Registry) error {

	if err := validate.Required("GeneralRateLimitDuration", "body", m.GeneralRateLimitDuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateShardCapacityLimit(formats strfmt.Registry) error {

	if err := validate.Required("ShardCapacityLimit", "body", m.ShardCapacityLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateShardDefaultLimit(formats strfmt.Registry) error {

	if err := validate.Required("ShardDefaultLimit", "body", m.ShardDefaultLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateShardHardLimit(formats strfmt.Registry) error {

	if err := validate.Required("ShardHardLimit", "body", m.ShardHardLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateSpamChatBurst(formats strfmt.Registry) error {

	if err := validate.Required("SpamChatBurst", "body", m.SpamChatBurst); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateSpamChatDuration(formats strfmt.Registry) error {

	if err := validate.Required("SpamChatDuration", "body", m.SpamChatDuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateSpamMuteDuration(formats strfmt.Registry) error {

	if err := validate.Required("SpamMuteDuration", "body", m.SpamMuteDuration); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsConfig) UnmarshalBinary(b []byte) error {
	var res ModelsConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

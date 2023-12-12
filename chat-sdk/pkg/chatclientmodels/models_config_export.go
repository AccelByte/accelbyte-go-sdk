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

// ModelsConfigExport Models config export
//
// swagger:model Models config export.
type ModelsConfigExport struct {

	// chatratelimitburst
	// Required: true
	// Format: int32
	ChatRateLimitBurst *int32 `json:"chatRateLimitBurst"`

	// chatratelimitduration
	// Required: true
	// Format: int64
	ChatRateLimitDuration *int64 `json:"chatRateLimitDuration"`

	// concurrentuserslimit
	// Required: true
	// Format: int32
	ConcurrentUsersLimit *int32 `json:"concurrentUsersLimit"`

	// enableclanchat
	EnableClanChat bool `json:"enableClanChat"`

	// enablemanualtopiccreation
	EnableManualTopicCreation bool `json:"enableManualTopicCreation"`

	// enableprofanityfilter
	EnableProfanityFilter bool `json:"enableProfanityFilter"`

	// filterappname
	FilterAppName string `json:"filterAppName,omitempty"`

	// filterparam
	FilterParam string `json:"filterParam,omitempty"`

	// filtertype
	FilterType string `json:"filterType,omitempty"`

	// generalratelimitburst
	// Required: true
	// Format: int32
	GeneralRateLimitBurst *int32 `json:"generalRateLimitBurst"`

	// generalratelimitduration
	// Required: true
	// Format: int64
	GeneralRateLimitDuration *int64 `json:"generalRateLimitDuration"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// shardcapacitylimit
	// Format: int32
	ShardCapacityLimit int32 `json:"shardCapacityLimit,omitempty"`

	// sharddefaultlimit
	// Format: int32
	ShardDefaultLimit int32 `json:"shardDefaultLimit,omitempty"`

	// shardhardlimit
	// Format: int32
	ShardHardLimit int32 `json:"shardHardLimit,omitempty"`

	// spamchatburst
	// Format: int32
	SpamChatBurst int32 `json:"spamChatBurst,omitempty"`

	// spamchatduration
	// Format: int64
	SpamChatDuration int64 `json:"spamChatDuration,omitempty"`

	// spammuteduration
	// Format: int64
	SpamMuteDuration int64 `json:"spamMuteDuration,omitempty"`
}

// Validate validates this Models config export
func (m *ModelsConfigExport) Validate(formats strfmt.Registry) error {
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
	if err := m.validateGeneralRateLimitBurst(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGeneralRateLimitDuration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsConfigExport) validateChatRateLimitBurst(formats strfmt.Registry) error {

	if err := validate.Required("chatRateLimitBurst", "body", m.ChatRateLimitBurst); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfigExport) validateChatRateLimitDuration(formats strfmt.Registry) error {

	if err := validate.Required("chatRateLimitDuration", "body", m.ChatRateLimitDuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfigExport) validateConcurrentUsersLimit(formats strfmt.Registry) error {

	if err := validate.Required("concurrentUsersLimit", "body", m.ConcurrentUsersLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfigExport) validateGeneralRateLimitBurst(formats strfmt.Registry) error {

	if err := validate.Required("generalRateLimitBurst", "body", m.GeneralRateLimitBurst); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfigExport) validateGeneralRateLimitDuration(formats strfmt.Registry) error {

	if err := validate.Required("generalRateLimitDuration", "body", m.GeneralRateLimitDuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfigExport) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsConfigExport) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsConfigExport) UnmarshalBinary(b []byte) error {
	var res ModelsConfigExport
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

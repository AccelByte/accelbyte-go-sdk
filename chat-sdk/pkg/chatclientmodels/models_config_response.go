// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsConfigResponse Models config response
//
// swagger:model Models config response.
type ModelsConfigResponse struct {

	// chatratelimitburst
	// Format: int32
	ChatRateLimitBurst int32 `json:"chatRateLimitBurst,omitempty"`

	// chatratelimitduration
	// Format: int64
	ChatRateLimitDuration int64 `json:"chatRateLimitDuration,omitempty"`

	// concurrentuserslimit
	// Format: int32
	ConcurrentUsersLimit int32 `json:"concurrentUsersLimit,omitempty"`

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
	// Format: int32
	GeneralRateLimitBurst int32 `json:"generalRateLimitBurst,omitempty"`

	// generalratelimitduration
	// Format: int64
	GeneralRateLimitDuration int64 `json:"generalRateLimitDuration,omitempty"`

	// maxchatmessagelength
	// Format: int32
	MaxChatMessageLength int32 `json:"maxChatMessageLength,omitempty"`

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

// Validate validates this Models config response
func (m *ModelsConfigResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsConfigResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsConfigResponse) UnmarshalBinary(b []byte) error {
	var res ModelsConfigResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

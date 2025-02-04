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

// ModelsPublicConfigResponse Models public config response
//
// swagger:model Models public config response.
type ModelsPublicConfigResponse struct {

	// chatratelimitburst
	// Required: true
	// Format: int32
	ChatRateLimitBurst *int32 `json:"chatRateLimitBurst"`

	// chatratelimitduration
	// Required: true
	// Format: int64
	ChatRateLimitDuration *int64 `json:"chatRateLimitDuration"`

	// enablepmsendplatformid
	EnablePmSendPlatformID bool `json:"enablePmSendPlatformId"`

	// generalratelimitburst
	// Required: true
	// Format: int32
	GeneralRateLimitBurst *int32 `json:"generalRateLimitBurst"`

	// generalratelimitduration
	// Required: true
	// Format: int64
	GeneralRateLimitDuration *int64 `json:"generalRateLimitDuration"`

	// maxchatmessagelength
	// Required: true
	// Format: int32
	MaxChatMessageLength *int32 `json:"maxChatMessageLength"`

	// spamchatburst
	// Required: true
	// Format: int32
	SpamChatBurst *int32 `json:"spamChatBurst"`

	// spamchatduration
	// Required: true
	// Format: int64
	SpamChatDuration *int64 `json:"spamChatDuration"`

	// spammuteduration
	// Required: true
	// Format: int64
	SpamMuteDuration *int64 `json:"spamMuteDuration"`
}

// Validate validates this Models public config response
func (m *ModelsPublicConfigResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChatRateLimitBurst(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateChatRateLimitDuration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGeneralRateLimitBurst(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGeneralRateLimitDuration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxChatMessageLength(formats); err != nil {
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

func (m *ModelsPublicConfigResponse) validateChatRateLimitBurst(formats strfmt.Registry) error {

	if err := validate.Required("chatRateLimitBurst", "body", m.ChatRateLimitBurst); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicConfigResponse) validateChatRateLimitDuration(formats strfmt.Registry) error {

	if err := validate.Required("chatRateLimitDuration", "body", m.ChatRateLimitDuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicConfigResponse) validateGeneralRateLimitBurst(formats strfmt.Registry) error {

	if err := validate.Required("generalRateLimitBurst", "body", m.GeneralRateLimitBurst); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicConfigResponse) validateGeneralRateLimitDuration(formats strfmt.Registry) error {

	if err := validate.Required("generalRateLimitDuration", "body", m.GeneralRateLimitDuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicConfigResponse) validateMaxChatMessageLength(formats strfmt.Registry) error {

	if err := validate.Required("maxChatMessageLength", "body", m.MaxChatMessageLength); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicConfigResponse) validateSpamChatBurst(formats strfmt.Registry) error {

	if err := validate.Required("spamChatBurst", "body", m.SpamChatBurst); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicConfigResponse) validateSpamChatDuration(formats strfmt.Registry) error {

	if err := validate.Required("spamChatDuration", "body", m.SpamChatDuration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicConfigResponse) validateSpamMuteDuration(formats strfmt.Registry) error {

	if err := validate.Required("spamMuteDuration", "body", m.SpamMuteDuration); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPublicConfigResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPublicConfigResponse) UnmarshalBinary(b []byte) error {
	var res ModelsPublicConfigResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

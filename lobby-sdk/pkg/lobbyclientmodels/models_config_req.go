// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsConfigReq Models config req
//
// swagger:model Models config req.
type ModelsConfigReq struct {

	// allowinvitenonconnecteduser
	AllowInviteNonConnectedUser bool `json:"allowInviteNonConnectedUser"`

	// allowjoinpartyduringmatchmaking
	AllowJoinPartyDuringMatchmaking bool `json:"allowJoinPartyDuringMatchmaking"`

	// autokickondisconnect
	AutoKickOnDisconnect bool `json:"autoKickOnDisconnect"`

	// autokickondisconnectdelay
	// Format: integer
	AutoKickOnDisconnectDelay int64 `json:"autoKickOnDisconnectDelay,omitempty"`

	// cancelticketondisconnect
	CancelTicketOnDisconnect bool `json:"cancelTicketOnDisconnect"`

	// chatratelimitburst
	// Format: int32
	ChatRateLimitBurst int32 `json:"chatRateLimitBurst,omitempty"`

	// chatratelimitduration
	// Format: integer
	ChatRateLimitDuration int64 `json:"chatRateLimitDuration,omitempty"`

	// concurrentuserslimit
	// Format: int32
	ConcurrentUsersLimit int32 `json:"concurrentUsersLimit,omitempty"`

	// disableinvitationonjoinparty
	DisableInvitationOnJoinParty bool `json:"disableInvitationOnJoinParty"`

	// enablechat
	EnableChat bool `json:"enableChat"`

	// entitlementcheck
	EntitlementCheck bool `json:"entitlementCheck"`

	// entitlementitemid
	EntitlementItemID string `json:"entitlementItemID,omitempty"`

	// generalratelimitburst
	// Format: int32
	GeneralRateLimitBurst int32 `json:"generalRateLimitBurst,omitempty"`

	// generalratelimitduration
	// Format: integer
	GeneralRateLimitDuration int64 `json:"generalRateLimitDuration,omitempty"`

	// keeppresenceactivityondisconnect
	KeepPresenceActivityOnDisconnect bool `json:"keepPresenceActivityOnDisconnect"`

	// maxdswaittime
	// Format: integer
	MaxDSWaitTime int64 `json:"maxDSWaitTime,omitempty"`

	// maxpartymember
	// Format: int32
	MaxPartyMember int32 `json:"maxPartyMember,omitempty"`

	// profanityfilter
	ProfanityFilter bool `json:"profanityFilter"`

	// readyconsenttimeout
	// Format: integer
	ReadyConsentTimeout int64 `json:"readyConsentTimeout,omitempty"`

	// unregisterdelay
	// Required: true
	// Format: integer
	UnregisterDelay *int64 `json:"unregisterDelay"`
}

// Validate validates this Models config req
func (m *ModelsConfigReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUnregisterDelay(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsConfigReq) validateUnregisterDelay(formats strfmt.Registry) error {

	if err := validate.Required("unregisterDelay", "body", m.UnregisterDelay); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsConfigReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsConfigReq) UnmarshalBinary(b []byte) error {
	var res ModelsConfigReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

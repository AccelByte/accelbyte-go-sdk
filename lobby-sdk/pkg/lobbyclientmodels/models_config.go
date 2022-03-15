// Code generated by go-swagger; DO NOT EDIT.

package lobbyclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsConfig models config
//
// swagger:model models.Config
type ModelsConfig struct {

	// allow invite non connected user
	AllowInviteNonConnectedUser bool `json:"allowInviteNonConnectedUser"`

	// auto kick on disconnect
	AutoKickOnDisconnect bool `json:"autoKickOnDisconnect"`

	// auto kick on disconnect delay
	AutoKickOnDisconnectDelay int64 `json:"autoKickOnDisconnectDelay,omitempty"`

	// cancel ticket on disconnect
	CancelTicketOnDisconnect bool `json:"cancelTicketOnDisconnect"`

	// chat rate limit burst
	ChatRateLimitBurst int32 `json:"chatRateLimitBurst,omitempty"`

	// chat rate limit duration
	ChatRateLimitDuration int64 `json:"chatRateLimitDuration,omitempty"`

	// concurrent users limit
	ConcurrentUsersLimit int32 `json:"concurrentUsersLimit,omitempty"`

	// disable party invitation token
	DisablePartyInvitationToken bool `json:"disablePartyInvitationToken"`

	// enable chat
	EnableChat bool `json:"enableChat"`

	// entitlement check
	EntitlementCheck bool `json:"entitlementCheck"`

	// entitlement item ID
	EntitlementItemID string `json:"entitlementItemID,omitempty"`

	// general rate limit burst
	GeneralRateLimitBurst int32 `json:"generalRateLimitBurst,omitempty"`

	// general rate limit duration
	GeneralRateLimitDuration int64 `json:"generalRateLimitDuration,omitempty"`

	// max party member
	MaxPartyMember int32 `json:"maxPartyMember,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// profanity filter
	ProfanityFilter bool `json:"profanityFilter"`

	// ready consent timeout
	ReadyConsentTimeout int64 `json:"readyConsentTimeout,omitempty"`
}

// Validate validates this models config
func (m *ModelsConfig) Validate(formats strfmt.Registry) error {
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

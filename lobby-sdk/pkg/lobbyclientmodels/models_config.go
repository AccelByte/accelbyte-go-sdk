// Code generated by go-swagger; DO NOT EDIT.

package lobbyclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsConfig models config
//
// swagger:model models.Config
type ModelsConfig struct {

	// allow invite non connected user
	AllowInviteNonConnectedUser bool `json:"allowInviteNonConnectedUser"`

	// allow join party during matchmaking
	AllowJoinPartyDuringMatchmaking bool `json:"allowJoinPartyDuringMatchmaking"`

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

	// disable invitation on join party
	DisableInvitationOnJoinParty bool `json:"disableInvitationOnJoinParty"`

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

	// keep presence activity on disconnect
	KeepPresenceActivityOnDisconnect bool `json:"keepPresenceActivityOnDisconnect"`

	// max d s wait time
	// Required: true
	MaxDSWaitTime *int64 `json:"maxDSWaitTime"`

	// max party member
	MaxPartyMember int32 `json:"maxPartyMember,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// profanity filter
	ProfanityFilter bool `json:"profanityFilter"`

	// ready consent timeout
	ReadyConsentTimeout int64 `json:"readyConsentTimeout,omitempty"`

	// unregister delay
	// Required: true
	UnregisterDelay *int64 `json:"unregisterDelay"`
}

// Validate validates this models config
func (m *ModelsConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxDSWaitTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUnregisterDelay(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsConfig) validateMaxDSWaitTime(formats strfmt.Registry) error {

	if err := validate.Required("maxDSWaitTime", "body", m.MaxDSWaitTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsConfig) validateUnregisterDelay(formats strfmt.Registry) error {

	if err := validate.Required("unregisterDelay", "body", m.UnregisterDelay); err != nil {
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

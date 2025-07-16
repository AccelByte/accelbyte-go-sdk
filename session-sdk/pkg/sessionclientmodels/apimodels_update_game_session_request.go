// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUpdateGameSessionRequest Apimodels update game session request
//
// swagger:model Apimodels update game session request.
type ApimodelsUpdateGameSessionRequest struct {

	// attributes
	// Required: true
	Attributes interface{} `json:"attributes"`

	// backfillticketid
	// Required: true
	BackfillTicketID *string `json:"backfillTicketID"`

	// clientversion
	// Required: true
	ClientVersion *string `json:"clientVersion"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// fallbackclaimkeys
	FallbackClaimKeys []string `json:"fallbackClaimKeys,omitempty"`

	// inactivetimeout
	// Required: true
	// Format: int32
	InactiveTimeout *int32 `json:"inactiveTimeout"`

	// invitetimeout
	// Required: true
	// Format: int32
	InviteTimeout *int32 `json:"inviteTimeout"`

	// joinability
	// Enum: ['CLOSED', 'FRIENDS_OF_FRIENDS', 'FRIENDS_OF_LEADER', 'FRIENDS_OF_MEMBERS', 'INVITE_ONLY', 'OPEN']
	// Required: true
	Joinability *string `json:"joinability"`

	// matchpool
	// Required: true
	MatchPool *string `json:"matchPool"`

	// maxplayers
	// Required: true
	// Format: int32
	MaxPlayers *int32 `json:"maxPlayers"`

	// minplayers
	// Required: true
	// Format: int32
	MinPlayers *int32 `json:"minPlayers"`

	// preferredclaimkeys
	PreferredClaimKeys []string `json:"preferredClaimKeys,omitempty"`

	// requestedregions
	// Required: true
	RequestedRegions []string `json:"requestedRegions"`

	// teams
	// Required: true
	Teams []*ModelsTeam `json:"teams"`

	// ticketids
	// Required: true
	TicketIDs []string `json:"ticketIDs"`

	// tieteamssessionlifetime
	TieTeamsSessionLifetime bool `json:"tieTeamsSessionLifetime"`

	// type
	// Enum: ['DS', 'NONE', 'P2P']
	// Required: true
	Type *string `json:"type"`

	// version
	// Required: true
	// Format: int32
	Version *int32 `json:"version"`
}

// Validate validates this Apimodels update game session request
func (m *ApimodelsUpdateGameSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBackfillTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInactiveTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInviteTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinability(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchPool(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxPlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinPlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestedRegions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTeams(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketIDs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVersion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateBackfillTicketID(formats strfmt.Registry) error {

	if err := validate.Required("backfillTicketID", "body", m.BackfillTicketID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("clientVersion", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

var apimodelsUpdateGameSessionRequestTypeJoinabilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLOSED", "FRIENDS_OF_FRIENDS", "FRIENDS_OF_LEADER", "FRIENDS_OF_MEMBERS", "INVITE_ONLY", "OPEN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUpdateGameSessionRequestTypeJoinabilityPropEnum = append(apimodelsUpdateGameSessionRequestTypeJoinabilityPropEnum, v)
	}
}

const (

	// ApimodelsUpdateGameSessionRequestJoinabilityCLOSED captures enum value "CLOSED"
	ApimodelsUpdateGameSessionRequestJoinabilityCLOSED string = "CLOSED"

	// ApimodelsUpdateGameSessionRequestJoinabilityFRIENDSOFFRIENDS captures enum value "FRIENDS_OF_FRIENDS"
	ApimodelsUpdateGameSessionRequestJoinabilityFRIENDSOFFRIENDS string = "FRIENDS_OF_FRIENDS"

	// ApimodelsUpdateGameSessionRequestJoinabilityFRIENDSOFLEADER captures enum value "FRIENDS_OF_LEADER"
	ApimodelsUpdateGameSessionRequestJoinabilityFRIENDSOFLEADER string = "FRIENDS_OF_LEADER"

	// ApimodelsUpdateGameSessionRequestJoinabilityFRIENDSOFMEMBERS captures enum value "FRIENDS_OF_MEMBERS"
	ApimodelsUpdateGameSessionRequestJoinabilityFRIENDSOFMEMBERS string = "FRIENDS_OF_MEMBERS"

	// ApimodelsUpdateGameSessionRequestJoinabilityINVITEONLY captures enum value "INVITE_ONLY"
	ApimodelsUpdateGameSessionRequestJoinabilityINVITEONLY string = "INVITE_ONLY"

	// ApimodelsUpdateGameSessionRequestJoinabilityOPEN captures enum value "OPEN"
	ApimodelsUpdateGameSessionRequestJoinabilityOPEN string = "OPEN"
)

// prop value enum
func (m *ApimodelsUpdateGameSessionRequest) validateJoinabilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUpdateGameSessionRequestTypeJoinabilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	// value enum
	if err := m.validateJoinabilityEnum("joinability", "body", *m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateMatchPool(formats strfmt.Registry) error {

	if err := validate.Required("matchPool", "body", m.MatchPool); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateRequestedRegions(formats strfmt.Registry) error {

	if err := validate.Required("requestedRegions", "body", m.RequestedRegions); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateTeams(formats strfmt.Registry) error {

	if err := validate.Required("teams", "body", m.Teams); err != nil {
		return err
	}

	for i := 0; i < len(m.Teams); i++ {
		if swag.IsZero(m.Teams[i]) { // not required
			continue
		}

		if m.Teams[i] != nil {
			if err := m.Teams[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("teams" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateTicketIDs(formats strfmt.Registry) error {

	if err := validate.Required("ticketIDs", "body", m.TicketIDs); err != nil {
		return err
	}

	return nil
}

var apimodelsUpdateGameSessionRequestTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DS", "NONE", "P2P"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUpdateGameSessionRequestTypeTypePropEnum = append(apimodelsUpdateGameSessionRequestTypeTypePropEnum, v)
	}
}

const (

	// ApimodelsUpdateGameSessionRequestTypeDS captures enum value "DS"
	ApimodelsUpdateGameSessionRequestTypeDS string = "DS"

	// ApimodelsUpdateGameSessionRequestTypeNONE captures enum value "NONE"
	ApimodelsUpdateGameSessionRequestTypeNONE string = "NONE"

	// ApimodelsUpdateGameSessionRequestTypeP2P captures enum value "P2P"
	ApimodelsUpdateGameSessionRequestTypeP2P string = "P2P"
)

// prop value enum
func (m *ApimodelsUpdateGameSessionRequest) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUpdateGameSessionRequestTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionRequest) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdateGameSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateGameSessionRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateGameSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

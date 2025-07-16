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

// ApimodelsCreateGameSessionRequest Apimodels create game session request
//
// swagger:model Apimodels create game session request.
type ApimodelsCreateGameSessionRequest struct {

	// appname
	AppName string `json:"appName,omitempty"`

	// attributes
	// Required: true
	Attributes interface{} `json:"attributes"`

	// autojoin
	AutoJoin bool `json:"autoJoin"`

	// backfillticketid
	// Required: true
	BackfillTicketID *string `json:"backfillTicketID"`

	// clientversion
	// Required: true
	ClientVersion *string `json:"clientVersion"`

	// configurationname
	// Required: true
	ConfigurationName *string `json:"configurationName"`

	// customurlgrpc
	CustomURLGRPC string `json:"customURLGRPC,omitempty"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// dssource
	DsSource string `json:"dsSource,omitempty"`

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

	// servername
	// Required: true
	ServerName *string `json:"serverName"`

	// session storage
	Storage *ApimodelsSessionStorageRequest `json:"storage,omitempty"`

	// teams
	// Required: true
	Teams []*ModelsTeam `json:"teams"`

	// textchat
	// Required: true
	TextChat *bool `json:"textChat"`

	// textchatmode
	// Enum: ['GAME', 'NONE', 'TEAM']
	TextChatMode string `json:"textChatMode,omitempty"`

	// ticketids
	// Required: true
	TicketIDs []string `json:"ticketIDs"`

	// tieteamssessionlifetime
	TieTeamsSessionLifetime bool `json:"tieTeamsSessionLifetime"`

	// type
	// Enum: ['DS', 'NONE', 'P2P']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Apimodels create game session request
func (m *ApimodelsCreateGameSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBackfillTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConfigurationName(formats); err != nil {
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
	if err := m.validateServerName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTeams(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTextChat(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketIDs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateBackfillTicketID(formats strfmt.Registry) error {

	if err := validate.Required("backfillTicketID", "body", m.BackfillTicketID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("clientVersion", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateConfigurationName(formats strfmt.Registry) error {

	if err := validate.Required("configurationName", "body", m.ConfigurationName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

var apimodelsCreateGameSessionRequestTypeJoinabilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLOSED", "FRIENDS_OF_FRIENDS", "FRIENDS_OF_LEADER", "FRIENDS_OF_MEMBERS", "INVITE_ONLY", "OPEN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreateGameSessionRequestTypeJoinabilityPropEnum = append(apimodelsCreateGameSessionRequestTypeJoinabilityPropEnum, v)
	}
}

const (

	// ApimodelsCreateGameSessionRequestJoinabilityCLOSED captures enum value "CLOSED"
	ApimodelsCreateGameSessionRequestJoinabilityCLOSED string = "CLOSED"

	// ApimodelsCreateGameSessionRequestJoinabilityFRIENDSOFFRIENDS captures enum value "FRIENDS_OF_FRIENDS"
	ApimodelsCreateGameSessionRequestJoinabilityFRIENDSOFFRIENDS string = "FRIENDS_OF_FRIENDS"

	// ApimodelsCreateGameSessionRequestJoinabilityFRIENDSOFLEADER captures enum value "FRIENDS_OF_LEADER"
	ApimodelsCreateGameSessionRequestJoinabilityFRIENDSOFLEADER string = "FRIENDS_OF_LEADER"

	// ApimodelsCreateGameSessionRequestJoinabilityFRIENDSOFMEMBERS captures enum value "FRIENDS_OF_MEMBERS"
	ApimodelsCreateGameSessionRequestJoinabilityFRIENDSOFMEMBERS string = "FRIENDS_OF_MEMBERS"

	// ApimodelsCreateGameSessionRequestJoinabilityINVITEONLY captures enum value "INVITE_ONLY"
	ApimodelsCreateGameSessionRequestJoinabilityINVITEONLY string = "INVITE_ONLY"

	// ApimodelsCreateGameSessionRequestJoinabilityOPEN captures enum value "OPEN"
	ApimodelsCreateGameSessionRequestJoinabilityOPEN string = "OPEN"
)

// prop value enum
func (m *ApimodelsCreateGameSessionRequest) validateJoinabilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreateGameSessionRequestTypeJoinabilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	// value enum
	if err := m.validateJoinabilityEnum("joinability", "body", *m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateMatchPool(formats strfmt.Registry) error {

	if err := validate.Required("matchPool", "body", m.MatchPool); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateRequestedRegions(formats strfmt.Registry) error {

	if err := validate.Required("requestedRegions", "body", m.RequestedRegions); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateServerName(formats strfmt.Registry) error {

	if err := validate.Required("serverName", "body", m.ServerName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateTeams(formats strfmt.Registry) error {

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

func (m *ApimodelsCreateGameSessionRequest) validateTextChat(formats strfmt.Registry) error {

	if err := validate.Required("textChat", "body", m.TextChat); err != nil {
		return err
	}

	return nil
}

var apimodelsCreateGameSessionRequestTypeTextChatModePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GAME", "NONE", "TEAM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreateGameSessionRequestTypeTextChatModePropEnum = append(apimodelsCreateGameSessionRequestTypeTextChatModePropEnum, v)
	}
}

const (

	// ApimodelsCreateGameSessionRequestTextChatModeGAME captures enum value "GAME"
	ApimodelsCreateGameSessionRequestTextChatModeGAME string = "GAME"

	// ApimodelsCreateGameSessionRequestTextChatModeNONE captures enum value "NONE"
	ApimodelsCreateGameSessionRequestTextChatModeNONE string = "NONE"

	// ApimodelsCreateGameSessionRequestTextChatModeTEAM captures enum value "TEAM"
	ApimodelsCreateGameSessionRequestTextChatModeTEAM string = "TEAM"
)

// prop value enum
func (m *ApimodelsCreateGameSessionRequest) validateTextChatModeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreateGameSessionRequestTypeTextChatModePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateTicketIDs(formats strfmt.Registry) error {

	if err := validate.Required("ticketIDs", "body", m.TicketIDs); err != nil {
		return err
	}

	return nil
}

var apimodelsCreateGameSessionRequestTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DS", "NONE", "P2P"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreateGameSessionRequestTypeTypePropEnum = append(apimodelsCreateGameSessionRequestTypeTypePropEnum, v)
	}
}

const (

	// ApimodelsCreateGameSessionRequestTypeDS captures enum value "DS"
	ApimodelsCreateGameSessionRequestTypeDS string = "DS"

	// ApimodelsCreateGameSessionRequestTypeNONE captures enum value "NONE"
	ApimodelsCreateGameSessionRequestTypeNONE string = "NONE"

	// ApimodelsCreateGameSessionRequestTypeP2P captures enum value "P2P"
	ApimodelsCreateGameSessionRequestTypeP2P string = "P2P"
)

// prop value enum
func (m *ApimodelsCreateGameSessionRequest) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreateGameSessionRequestTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreateGameSessionRequest) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsCreateGameSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreateGameSessionRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreateGameSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

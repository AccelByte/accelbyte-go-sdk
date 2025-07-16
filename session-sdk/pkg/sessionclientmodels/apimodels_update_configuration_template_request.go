// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUpdateConfigurationTemplateRequest Apimodels update configuration template request
//
// swagger:model Apimodels update configuration template request.
type ApimodelsUpdateConfigurationTemplateRequest struct {

	// nativesessionsetting
	NativeSessionSetting *ModelsNativeSessionSetting `json:"NativeSessionSetting,omitempty"`

	// psnbaseurl
	PSNBaseURL string `json:"PSNBaseUrl,omitempty"`

	// amsclaimtimeoutminutes
	// Format: int32
	AmsClaimTimeoutMinutes int32 `json:"amsClaimTimeoutMinutes,omitempty"`

	// appname
	AppName string `json:"appName,omitempty"`

	// asyncprocessdsrequest
	AsyncProcessDSRequest *ModelsAsyncProcessDSRequest `json:"asyncProcessDSRequest,omitempty"`

	// attributes
	Attributes interface{} `json:"attributes,omitempty"`

	// autojoin
	AutoJoin bool `json:"autoJoin"`

	// autoleavesession
	AutoLeaveSession bool `json:"autoLeaveSession"`

	// clientversion
	// Required: true
	ClientVersion *string `json:"clientVersion"`

	// customurlgrpc
	CustomURLGRPC string `json:"customURLGRPC,omitempty"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// disablecodegeneration
	DisableCodeGeneration bool `json:"disableCodeGeneration"`

	// disableresendinvite
	DisableResendInvite bool `json:"disableResendInvite"`

	// dsmanualsetready
	DsManualSetReady bool `json:"dsManualSetReady"`

	// dssource
	DsSource string `json:"dsSource,omitempty"`

	// enablesecret
	EnableSecret bool `json:"enableSecret"`

	// fallbackclaimkeys
	FallbackClaimKeys []string `json:"fallbackClaimKeys,omitempty"`

	// grpcsessionconfig
	GrpcSessionConfig *ModelsExtendConfiguration `json:"grpcSessionConfig,omitempty"`

	// immutablestorage
	ImmutableStorage bool `json:"immutableStorage"`

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

	// leaderelectiongraceperiod
	// Format: int32
	LeaderElectionGracePeriod int32 `json:"leaderElectionGracePeriod,omitempty"`

	// manualrejoin
	ManualRejoin bool `json:"manualRejoin"`

	// maxactivesessions
	// Format: int32
	MaxActiveSessions int32 `json:"maxActiveSessions,omitempty"`

	// maxplayers
	// Required: true
	// Format: int32
	MaxPlayers *int32 `json:"maxPlayers"`

	// minplayers
	// Required: true
	// Format: int32
	MinPlayers *int32 `json:"minPlayers"`

	// name
	// Required: true
	Name *string `json:"name"`

	// persistent
	// Required: true
	Persistent *bool `json:"persistent"`

	// preferredclaimkeys
	PreferredClaimKeys []string `json:"preferredClaimKeys,omitempty"`

	// requestedregions
	// Required: true
	RequestedRegions []string `json:"requestedRegions"`

	// textchat
	// Required: true
	TextChat *bool `json:"textChat"`

	// textchatmode
	// Enum: ['GAME', 'NONE', 'TEAM']
	TextChatMode string `json:"textChatMode,omitempty"`

	// tieteamssessionlifetime
	TieTeamsSessionLifetime bool `json:"tieTeamsSessionLifetime"`

	// ttlhours
	// Format: int32
	TTLHours int32 `json:"ttlHours,omitempty"`

	// type
	// Enum: ['DS', 'NONE', 'P2P']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Apimodels update configuration template request
func (m *ApimodelsUpdateConfigurationTemplateRequest) Validate(formats strfmt.Registry) error {
	var res []error

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
	if err := m.validateMaxPlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinPlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePersistent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestedRegions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTextChat(formats); err != nil {
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

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("clientVersion", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

var apimodelsUpdateConfigurationTemplateRequestTypeJoinabilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLOSED", "FRIENDS_OF_FRIENDS", "FRIENDS_OF_LEADER", "FRIENDS_OF_MEMBERS", "INVITE_ONLY", "OPEN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUpdateConfigurationTemplateRequestTypeJoinabilityPropEnum = append(apimodelsUpdateConfigurationTemplateRequestTypeJoinabilityPropEnum, v)
	}
}

const (

	// ApimodelsUpdateConfigurationTemplateRequestJoinabilityCLOSED captures enum value "CLOSED"
	ApimodelsUpdateConfigurationTemplateRequestJoinabilityCLOSED string = "CLOSED"

	// ApimodelsUpdateConfigurationTemplateRequestJoinabilityFRIENDSOFFRIENDS captures enum value "FRIENDS_OF_FRIENDS"
	ApimodelsUpdateConfigurationTemplateRequestJoinabilityFRIENDSOFFRIENDS string = "FRIENDS_OF_FRIENDS"

	// ApimodelsUpdateConfigurationTemplateRequestJoinabilityFRIENDSOFLEADER captures enum value "FRIENDS_OF_LEADER"
	ApimodelsUpdateConfigurationTemplateRequestJoinabilityFRIENDSOFLEADER string = "FRIENDS_OF_LEADER"

	// ApimodelsUpdateConfigurationTemplateRequestJoinabilityFRIENDSOFMEMBERS captures enum value "FRIENDS_OF_MEMBERS"
	ApimodelsUpdateConfigurationTemplateRequestJoinabilityFRIENDSOFMEMBERS string = "FRIENDS_OF_MEMBERS"

	// ApimodelsUpdateConfigurationTemplateRequestJoinabilityINVITEONLY captures enum value "INVITE_ONLY"
	ApimodelsUpdateConfigurationTemplateRequestJoinabilityINVITEONLY string = "INVITE_ONLY"

	// ApimodelsUpdateConfigurationTemplateRequestJoinabilityOPEN captures enum value "OPEN"
	ApimodelsUpdateConfigurationTemplateRequestJoinabilityOPEN string = "OPEN"
)

// prop value enum
func (m *ApimodelsUpdateConfigurationTemplateRequest) validateJoinabilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUpdateConfigurationTemplateRequestTypeJoinabilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	// value enum
	if err := m.validateJoinabilityEnum("joinability", "body", *m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateRequestedRegions(formats strfmt.Registry) error {

	if err := validate.Required("requestedRegions", "body", m.RequestedRegions); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateTextChat(formats strfmt.Registry) error {

	if err := validate.Required("textChat", "body", m.TextChat); err != nil {
		return err
	}

	return nil
}

var apimodelsUpdateConfigurationTemplateRequestTypeTextChatModePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GAME", "NONE", "TEAM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUpdateConfigurationTemplateRequestTypeTextChatModePropEnum = append(apimodelsUpdateConfigurationTemplateRequestTypeTextChatModePropEnum, v)
	}
}

const (

	// ApimodelsUpdateConfigurationTemplateRequestTextChatModeGAME captures enum value "GAME"
	ApimodelsUpdateConfigurationTemplateRequestTextChatModeGAME string = "GAME"

	// ApimodelsUpdateConfigurationTemplateRequestTextChatModeNONE captures enum value "NONE"
	ApimodelsUpdateConfigurationTemplateRequestTextChatModeNONE string = "NONE"

	// ApimodelsUpdateConfigurationTemplateRequestTextChatModeTEAM captures enum value "TEAM"
	ApimodelsUpdateConfigurationTemplateRequestTextChatModeTEAM string = "TEAM"
)

// prop value enum
func (m *ApimodelsUpdateConfigurationTemplateRequest) validateTextChatModeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUpdateConfigurationTemplateRequestTypeTextChatModePropEnum, true); err != nil {
		return err
	}
	return nil
}

var apimodelsUpdateConfigurationTemplateRequestTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DS", "NONE", "P2P"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUpdateConfigurationTemplateRequestTypeTypePropEnum = append(apimodelsUpdateConfigurationTemplateRequestTypeTypePropEnum, v)
	}
}

const (

	// ApimodelsUpdateConfigurationTemplateRequestTypeDS captures enum value "DS"
	ApimodelsUpdateConfigurationTemplateRequestTypeDS string = "DS"

	// ApimodelsUpdateConfigurationTemplateRequestTypeNONE captures enum value "NONE"
	ApimodelsUpdateConfigurationTemplateRequestTypeNONE string = "NONE"

	// ApimodelsUpdateConfigurationTemplateRequestTypeP2P captures enum value "P2P"
	ApimodelsUpdateConfigurationTemplateRequestTypeP2P string = "P2P"
)

// prop value enum
func (m *ApimodelsUpdateConfigurationTemplateRequest) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUpdateConfigurationTemplateRequestTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateType(formats strfmt.Registry) error {

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
func (m *ApimodelsUpdateConfigurationTemplateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateConfigurationTemplateRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateConfigurationTemplateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

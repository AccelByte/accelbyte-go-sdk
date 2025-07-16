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

// ApimodelsCreateConfigurationTemplateRequest Apimodels create configuration template request
//
// swagger:model Apimodels create configuration template request.
type ApimodelsCreateConfigurationTemplateRequest struct {

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

// Validate validates this Apimodels create configuration template request
func (m *ApimodelsCreateConfigurationTemplateRequest) Validate(formats strfmt.Registry) error {
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

func (m *ApimodelsCreateConfigurationTemplateRequest) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("clientVersion", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

var apimodelsCreateConfigurationTemplateRequestTypeJoinabilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLOSED", "FRIENDS_OF_FRIENDS", "FRIENDS_OF_LEADER", "FRIENDS_OF_MEMBERS", "INVITE_ONLY", "OPEN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreateConfigurationTemplateRequestTypeJoinabilityPropEnum = append(apimodelsCreateConfigurationTemplateRequestTypeJoinabilityPropEnum, v)
	}
}

const (

	// ApimodelsCreateConfigurationTemplateRequestJoinabilityCLOSED captures enum value "CLOSED"
	ApimodelsCreateConfigurationTemplateRequestJoinabilityCLOSED string = "CLOSED"

	// ApimodelsCreateConfigurationTemplateRequestJoinabilityFRIENDSOFFRIENDS captures enum value "FRIENDS_OF_FRIENDS"
	ApimodelsCreateConfigurationTemplateRequestJoinabilityFRIENDSOFFRIENDS string = "FRIENDS_OF_FRIENDS"

	// ApimodelsCreateConfigurationTemplateRequestJoinabilityFRIENDSOFLEADER captures enum value "FRIENDS_OF_LEADER"
	ApimodelsCreateConfigurationTemplateRequestJoinabilityFRIENDSOFLEADER string = "FRIENDS_OF_LEADER"

	// ApimodelsCreateConfigurationTemplateRequestJoinabilityFRIENDSOFMEMBERS captures enum value "FRIENDS_OF_MEMBERS"
	ApimodelsCreateConfigurationTemplateRequestJoinabilityFRIENDSOFMEMBERS string = "FRIENDS_OF_MEMBERS"

	// ApimodelsCreateConfigurationTemplateRequestJoinabilityINVITEONLY captures enum value "INVITE_ONLY"
	ApimodelsCreateConfigurationTemplateRequestJoinabilityINVITEONLY string = "INVITE_ONLY"

	// ApimodelsCreateConfigurationTemplateRequestJoinabilityOPEN captures enum value "OPEN"
	ApimodelsCreateConfigurationTemplateRequestJoinabilityOPEN string = "OPEN"
)

// prop value enum
func (m *ApimodelsCreateConfigurationTemplateRequest) validateJoinabilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreateConfigurationTemplateRequestTypeJoinabilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	// value enum
	if err := m.validateJoinabilityEnum("joinability", "body", *m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateRequestedRegions(formats strfmt.Registry) error {

	if err := validate.Required("requestedRegions", "body", m.RequestedRegions); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateTextChat(formats strfmt.Registry) error {

	if err := validate.Required("textChat", "body", m.TextChat); err != nil {
		return err
	}

	return nil
}

var apimodelsCreateConfigurationTemplateRequestTypeTextChatModePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GAME", "NONE", "TEAM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreateConfigurationTemplateRequestTypeTextChatModePropEnum = append(apimodelsCreateConfigurationTemplateRequestTypeTextChatModePropEnum, v)
	}
}

const (

	// ApimodelsCreateConfigurationTemplateRequestTextChatModeGAME captures enum value "GAME"
	ApimodelsCreateConfigurationTemplateRequestTextChatModeGAME string = "GAME"

	// ApimodelsCreateConfigurationTemplateRequestTextChatModeNONE captures enum value "NONE"
	ApimodelsCreateConfigurationTemplateRequestTextChatModeNONE string = "NONE"

	// ApimodelsCreateConfigurationTemplateRequestTextChatModeTEAM captures enum value "TEAM"
	ApimodelsCreateConfigurationTemplateRequestTextChatModeTEAM string = "TEAM"
)

// prop value enum
func (m *ApimodelsCreateConfigurationTemplateRequest) validateTextChatModeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreateConfigurationTemplateRequestTypeTextChatModePropEnum, true); err != nil {
		return err
	}
	return nil
}

var apimodelsCreateConfigurationTemplateRequestTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DS", "NONE", "P2P"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreateConfigurationTemplateRequestTypeTypePropEnum = append(apimodelsCreateConfigurationTemplateRequestTypeTypePropEnum, v)
	}
}

const (

	// ApimodelsCreateConfigurationTemplateRequestTypeDS captures enum value "DS"
	ApimodelsCreateConfigurationTemplateRequestTypeDS string = "DS"

	// ApimodelsCreateConfigurationTemplateRequestTypeNONE captures enum value "NONE"
	ApimodelsCreateConfigurationTemplateRequestTypeNONE string = "NONE"

	// ApimodelsCreateConfigurationTemplateRequestTypeP2P captures enum value "P2P"
	ApimodelsCreateConfigurationTemplateRequestTypeP2P string = "P2P"
)

// prop value enum
func (m *ApimodelsCreateConfigurationTemplateRequest) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreateConfigurationTemplateRequestTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreateConfigurationTemplateRequest) validateType(formats strfmt.Registry) error {

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
func (m *ApimodelsCreateConfigurationTemplateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreateConfigurationTemplateRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreateConfigurationTemplateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

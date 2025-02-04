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

// ApimodelsPublicConfiguration Apimodels public configuration
//
// swagger:model Apimodels public configuration.
type ApimodelsPublicConfiguration struct {

	// psnbaseurl
	PSNBaseURL string `json:"PSNBaseURL,omitempty"`

	// appname
	AppName string `json:"appName,omitempty"`

	// asyncprocessdsrequest
	AsyncProcessDSRequest *ModelsAsyncProcessDSRequest `json:"asyncProcessDSRequest,omitempty"`

	// attributes
	Attributes interface{} `json:"attributes,omitempty"`

	// autojoin
	// Required: true
	AutoJoin *bool `json:"autoJoin"`

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
	// Required: true
	Joinability *string `json:"joinability"`

	// leaderelectiongraceperiod
	// Format: int32
	LeaderElectionGracePeriod int32 `json:"leaderElectionGracePeriod,omitempty"`

	// manualrejoin
	ManualRejoin bool `json:"manualRejoin"`

	// maxactivesession
	// Format: int32
	MaxActiveSession int32 `json:"maxActiveSession,omitempty"`

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

	// nativesessionsetting
	NativeSessionSetting *ModelsNativeSessionSetting `json:"nativeSessionSetting,omitempty"`

	// persistent
	// Required: true
	Persistent *bool `json:"persistent"`

	// preferredclaimkeys
	PreferredClaimKeys []string `json:"preferredClaimKeys,omitempty"`

	// requestedregions
	RequestedRegions []string `json:"requestedRegions,omitempty"`

	// textchat
	// Required: true
	TextChat *bool `json:"textChat"`

	// textchatmode
	// Enum: ['GAME', 'NONE', 'TEAM']
	TextChatMode string `json:"textChatMode,omitempty"`

	// tieteamssessionlifetime
	TieTeamsSessionLifetime bool `json:"tieTeamsSessionLifetime"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Apimodels public configuration
func (m *ApimodelsPublicConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoJoin(formats); err != nil {
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

func (m *ApimodelsPublicConfiguration) validateAutoJoin(formats strfmt.Registry) error {

	if err := validate.Required("autoJoin", "body", m.AutoJoin); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("clientVersion", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPublicConfiguration) validateTextChat(formats strfmt.Registry) error {

	if err := validate.Required("textChat", "body", m.TextChat); err != nil {
		return err
	}

	return nil
}

var apimodelsPublicConfigurationTypeTextChatModePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GAME", "NONE", "TEAM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsPublicConfigurationTypeTextChatModePropEnum = append(apimodelsPublicConfigurationTypeTextChatModePropEnum, v)
	}
}

const (

	// ApimodelsPublicConfigurationTextChatModeGAME captures enum value "GAME"
	ApimodelsPublicConfigurationTextChatModeGAME string = "GAME"

	// ApimodelsPublicConfigurationTextChatModeNONE captures enum value "NONE"
	ApimodelsPublicConfigurationTextChatModeNONE string = "NONE"

	// ApimodelsPublicConfigurationTextChatModeTEAM captures enum value "TEAM"
	ApimodelsPublicConfigurationTextChatModeTEAM string = "TEAM"
)

// prop value enum
func (m *ApimodelsPublicConfiguration) validateTextChatModeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsPublicConfigurationTypeTextChatModePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsPublicConfiguration) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsPublicConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsPublicConfiguration) UnmarshalBinary(b []byte) error {
	var res ApimodelsPublicConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsConfigurationTemplateResponse Apimodels configuration template response
//
// swagger:model Apimodels configuration template response.
type ApimodelsConfigurationTemplateResponse struct {

	// psnbaseurl
	PSNBaseURL string `json:"PSNBaseUrl,omitempty"`

	// autojoin
	AutoJoin bool `json:"autoJoin"`

	// clientversion
	// Required: true
	ClientVersion *string `json:"clientVersion"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// disablecodegeneration
	DisableCodeGeneration bool `json:"disableCodeGeneration"`

	// dsmanualsetready
	DsManualSetReady bool `json:"dsManualSetReady"`

	// dssource
	DsSource string `json:"dsSource,omitempty"`

	// enablesecret
	// Required: true
	EnableSecret *bool `json:"enableSecret"`

	// fallbackclaimkeys
	FallbackClaimKeys []string `json:"fallbackClaimKeys,omitempty"`

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

	// last
	// Required: true
	Last *string `json:"last"`

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

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

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

	// tieteamssessionlifetime
	TieTeamsSessionLifetime bool `json:"tieTeamsSessionLifetime"`

	// type
	// Required: true
	Type *string `json:"type"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Apimodels configuration template response
func (m *ApimodelsConfigurationTemplateResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnableSecret(formats); err != nil {
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
	if err := m.validateLast(formats); err != nil {
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
	if err := m.validateNamespace(formats); err != nil {
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
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("clientVersion", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateEnableSecret(formats strfmt.Registry) error {

	if err := validate.Required("enableSecret", "body", m.EnableSecret); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateLast(formats strfmt.Registry) error {

	if err := validate.Required("last", "body", m.Last); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateTextChat(formats strfmt.Registry) error {

	if err := validate.Required("textChat", "body", m.TextChat); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationTemplateResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsConfigurationTemplateResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsConfigurationTemplateResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsConfigurationTemplateResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

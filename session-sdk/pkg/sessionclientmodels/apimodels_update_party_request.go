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

// ApimodelsUpdatePartyRequest Apimodels update party request
//
// swagger:model Apimodels update party request.
type ApimodelsUpdatePartyRequest struct {

	// attributes
	// Required: true
	Attributes interface{} `json:"attributes"`

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

	// maxplayers
	// Required: true
	// Format: int32
	MaxPlayers *int32 `json:"maxPlayers"`

	// minplayers
	// Required: true
	// Format: int32
	MinPlayers *int32 `json:"minPlayers"`

	// type
	// Enum: ['DS', 'NONE', 'P2P']
	// Required: true
	Type *string `json:"type"`

	// version
	// Required: true
	// Format: int32
	Version *int32 `json:"version"`
}

// Validate validates this Apimodels update party request
func (m *ApimodelsUpdatePartyRequest) Validate(formats strfmt.Registry) error {
	var res []error

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

func (m *ApimodelsUpdatePartyRequest) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdatePartyRequest) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

var apimodelsUpdatePartyRequestTypeJoinabilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLOSED", "FRIENDS_OF_FRIENDS", "FRIENDS_OF_LEADER", "FRIENDS_OF_MEMBERS", "INVITE_ONLY", "OPEN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUpdatePartyRequestTypeJoinabilityPropEnum = append(apimodelsUpdatePartyRequestTypeJoinabilityPropEnum, v)
	}
}

const (

	// ApimodelsUpdatePartyRequestJoinabilityCLOSED captures enum value "CLOSED"
	ApimodelsUpdatePartyRequestJoinabilityCLOSED string = "CLOSED"

	// ApimodelsUpdatePartyRequestJoinabilityFRIENDSOFFRIENDS captures enum value "FRIENDS_OF_FRIENDS"
	ApimodelsUpdatePartyRequestJoinabilityFRIENDSOFFRIENDS string = "FRIENDS_OF_FRIENDS"

	// ApimodelsUpdatePartyRequestJoinabilityFRIENDSOFLEADER captures enum value "FRIENDS_OF_LEADER"
	ApimodelsUpdatePartyRequestJoinabilityFRIENDSOFLEADER string = "FRIENDS_OF_LEADER"

	// ApimodelsUpdatePartyRequestJoinabilityFRIENDSOFMEMBERS captures enum value "FRIENDS_OF_MEMBERS"
	ApimodelsUpdatePartyRequestJoinabilityFRIENDSOFMEMBERS string = "FRIENDS_OF_MEMBERS"

	// ApimodelsUpdatePartyRequestJoinabilityINVITEONLY captures enum value "INVITE_ONLY"
	ApimodelsUpdatePartyRequestJoinabilityINVITEONLY string = "INVITE_ONLY"

	// ApimodelsUpdatePartyRequestJoinabilityOPEN captures enum value "OPEN"
	ApimodelsUpdatePartyRequestJoinabilityOPEN string = "OPEN"
)

// prop value enum
func (m *ApimodelsUpdatePartyRequest) validateJoinabilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUpdatePartyRequestTypeJoinabilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUpdatePartyRequest) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	// value enum
	if err := m.validateJoinabilityEnum("joinability", "body", *m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdatePartyRequest) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdatePartyRequest) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

var apimodelsUpdatePartyRequestTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DS", "NONE", "P2P"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUpdatePartyRequestTypeTypePropEnum = append(apimodelsUpdatePartyRequestTypeTypePropEnum, v)
	}
}

const (

	// ApimodelsUpdatePartyRequestTypeDS captures enum value "DS"
	ApimodelsUpdatePartyRequestTypeDS string = "DS"

	// ApimodelsUpdatePartyRequestTypeNONE captures enum value "NONE"
	ApimodelsUpdatePartyRequestTypeNONE string = "NONE"

	// ApimodelsUpdatePartyRequestTypeP2P captures enum value "P2P"
	ApimodelsUpdatePartyRequestTypeP2P string = "P2P"
)

// prop value enum
func (m *ApimodelsUpdatePartyRequest) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUpdatePartyRequestTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUpdatePartyRequest) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdatePartyRequest) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdatePartyRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdatePartyRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdatePartyRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

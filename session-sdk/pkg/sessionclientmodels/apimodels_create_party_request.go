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

// ApimodelsCreatePartyRequest Apimodels create party request
//
// swagger:model Apimodels create party request.
type ApimodelsCreatePartyRequest struct {

	// attributes
	// Required: true
	Attributes interface{} `json:"attributes"`

	// configurationname
	// Required: true
	ConfigurationName *string `json:"configurationName"`

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

	// members
	// Required: true
	Members []*ApimodelsRequestMember `json:"members"`

	// minplayers
	// Required: true
	// Format: int32
	MinPlayers *int32 `json:"minPlayers"`

	// textchat
	// Required: true
	TextChat *bool `json:"textChat"`

	// type
	// Enum: ['DS', 'NONE', 'P2P']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Apimodels create party request
func (m *ApimodelsCreatePartyRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigurationName(formats); err != nil {
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
	if err := m.validateMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinPlayers(formats); err != nil {
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

func (m *ApimodelsCreatePartyRequest) validateConfigurationName(formats strfmt.Registry) error {

	if err := validate.Required("configurationName", "body", m.ConfigurationName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreatePartyRequest) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreatePartyRequest) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

var apimodelsCreatePartyRequestTypeJoinabilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLOSED", "FRIENDS_OF_FRIENDS", "FRIENDS_OF_LEADER", "FRIENDS_OF_MEMBERS", "INVITE_ONLY", "OPEN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreatePartyRequestTypeJoinabilityPropEnum = append(apimodelsCreatePartyRequestTypeJoinabilityPropEnum, v)
	}
}

const (

	// ApimodelsCreatePartyRequestJoinabilityCLOSED captures enum value "CLOSED"
	ApimodelsCreatePartyRequestJoinabilityCLOSED string = "CLOSED"

	// ApimodelsCreatePartyRequestJoinabilityFRIENDSOFFRIENDS captures enum value "FRIENDS_OF_FRIENDS"
	ApimodelsCreatePartyRequestJoinabilityFRIENDSOFFRIENDS string = "FRIENDS_OF_FRIENDS"

	// ApimodelsCreatePartyRequestJoinabilityFRIENDSOFLEADER captures enum value "FRIENDS_OF_LEADER"
	ApimodelsCreatePartyRequestJoinabilityFRIENDSOFLEADER string = "FRIENDS_OF_LEADER"

	// ApimodelsCreatePartyRequestJoinabilityFRIENDSOFMEMBERS captures enum value "FRIENDS_OF_MEMBERS"
	ApimodelsCreatePartyRequestJoinabilityFRIENDSOFMEMBERS string = "FRIENDS_OF_MEMBERS"

	// ApimodelsCreatePartyRequestJoinabilityINVITEONLY captures enum value "INVITE_ONLY"
	ApimodelsCreatePartyRequestJoinabilityINVITEONLY string = "INVITE_ONLY"

	// ApimodelsCreatePartyRequestJoinabilityOPEN captures enum value "OPEN"
	ApimodelsCreatePartyRequestJoinabilityOPEN string = "OPEN"
)

// prop value enum
func (m *ApimodelsCreatePartyRequest) validateJoinabilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreatePartyRequestTypeJoinabilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreatePartyRequest) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	// value enum
	if err := m.validateJoinabilityEnum("joinability", "body", *m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreatePartyRequest) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreatePartyRequest) validateMembers(formats strfmt.Registry) error {

	if err := validate.Required("members", "body", m.Members); err != nil {
		return err
	}

	for i := 0; i < len(m.Members); i++ {
		if swag.IsZero(m.Members[i]) { // not required
			continue
		}

		if m.Members[i] != nil {
			if err := m.Members[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("members" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsCreatePartyRequest) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreatePartyRequest) validateTextChat(formats strfmt.Registry) error {

	if err := validate.Required("textChat", "body", m.TextChat); err != nil {
		return err
	}

	return nil
}

var apimodelsCreatePartyRequestTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DS", "NONE", "P2P"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreatePartyRequestTypeTypePropEnum = append(apimodelsCreatePartyRequestTypeTypePropEnum, v)
	}
}

const (

	// ApimodelsCreatePartyRequestTypeDS captures enum value "DS"
	ApimodelsCreatePartyRequestTypeDS string = "DS"

	// ApimodelsCreatePartyRequestTypeNONE captures enum value "NONE"
	ApimodelsCreatePartyRequestTypeNONE string = "NONE"

	// ApimodelsCreatePartyRequestTypeP2P captures enum value "P2P"
	ApimodelsCreatePartyRequestTypeP2P string = "P2P"
)

// prop value enum
func (m *ApimodelsCreatePartyRequest) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreatePartyRequestTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreatePartyRequest) validateType(formats strfmt.Registry) error {

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
func (m *ApimodelsCreatePartyRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreatePartyRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreatePartyRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

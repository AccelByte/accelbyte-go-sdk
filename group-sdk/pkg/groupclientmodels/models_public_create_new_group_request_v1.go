// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPublicCreateNewGroupRequestV1 Models public create new group request V1
//
// swagger:model Models public create new group request V1.
type ModelsPublicCreateNewGroupRequestV1 struct {

	// configurationcode
	// Required: true
	ConfigurationCode *string `json:"configurationCode"`

	// customattributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`

	// groupdescription
	// Required: true
	GroupDescription *string `json:"groupDescription"`

	// groupicon
	// Required: true
	GroupIcon *string `json:"groupIcon"`

	// groupmaxmember
	// Required: true
	// Format: int32
	GroupMaxMember *int32 `json:"groupMaxMember"`

	// groupname
	// Required: true
	GroupName *string `json:"groupName"`

	// groupregion
	// Required: true
	GroupRegion *string `json:"groupRegion"`

	// grouprules
	// Required: true
	GroupRules *ModelsGroupRule `json:"groupRules"`

	// grouptype
	// Enum: ['OPEN', 'PRIVATE', 'PUBLIC']
	// Required: true
	GroupType *string `json:"groupType"`
}

// Validate validates this Models public create new group request V1
func (m *ModelsPublicCreateNewGroupRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigurationCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupIcon(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupMaxMember(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupRules(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPublicCreateNewGroupRequestV1) validateConfigurationCode(formats strfmt.Registry) error {

	if err := validate.Required("configurationCode", "body", m.ConfigurationCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupDescription(formats strfmt.Registry) error {

	if err := validate.Required("groupDescription", "body", m.GroupDescription); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupIcon(formats strfmt.Registry) error {

	if err := validate.Required("groupIcon", "body", m.GroupIcon); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupMaxMember(formats strfmt.Registry) error {

	if err := validate.Required("groupMaxMember", "body", m.GroupMaxMember); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupName(formats strfmt.Registry) error {

	if err := validate.Required("groupName", "body", m.GroupName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupRegion(formats strfmt.Registry) error {

	if err := validate.Required("groupRegion", "body", m.GroupRegion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupRules(formats strfmt.Registry) error {

	if err := validate.Required("groupRules", "body", m.GroupRules); err != nil {
		return err
	}

	if m.GroupRules != nil {
		if err := m.GroupRules.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("groupRules")
			}
			return err
		}
	}

	return nil
}

var modelsPublicCreateNewGroupRequestV1TypeGroupTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["OPEN", "PRIVATE", "PUBLIC"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsPublicCreateNewGroupRequestV1TypeGroupTypePropEnum = append(modelsPublicCreateNewGroupRequestV1TypeGroupTypePropEnum, v)
	}
}

const (

	// ModelsPublicCreateNewGroupRequestV1GroupTypeOPEN captures enum value "OPEN"
	ModelsPublicCreateNewGroupRequestV1GroupTypeOPEN string = "OPEN"

	// ModelsPublicCreateNewGroupRequestV1GroupTypePRIVATE captures enum value "PRIVATE"
	ModelsPublicCreateNewGroupRequestV1GroupTypePRIVATE string = "PRIVATE"

	// ModelsPublicCreateNewGroupRequestV1GroupTypePUBLIC captures enum value "PUBLIC"
	ModelsPublicCreateNewGroupRequestV1GroupTypePUBLIC string = "PUBLIC"
)

// prop value enum
func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsPublicCreateNewGroupRequestV1TypeGroupTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupType(formats strfmt.Registry) error {

	if err := validate.Required("groupType", "body", m.GroupType); err != nil {
		return err
	}

	// value enum
	if err := m.validateGroupTypeEnum("groupType", "body", *m.GroupType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPublicCreateNewGroupRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPublicCreateNewGroupRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsPublicCreateNewGroupRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

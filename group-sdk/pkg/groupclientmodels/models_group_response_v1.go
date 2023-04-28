// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGroupResponseV1 Models group response V1
//
// swagger:model Models group response V1.
type ModelsGroupResponseV1 struct {

	// configurationcode
	// Required: true
	ConfigurationCode *string `json:"configurationCode"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// customattributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`

	// groupdescription
	// Required: true
	GroupDescription *string `json:"groupDescription"`

	// groupicon
	// Required: true
	GroupIcon *string `json:"groupIcon"`

	// groupid
	// Required: true
	GroupID *string `json:"groupId"`

	// groupmaxmember
	// Required: true
	// Format: int32
	GroupMaxMember *int32 `json:"groupMaxMember"`

	// groupmembers
	// Required: true
	GroupMembers []*ModelsGroupMember `json:"groupMembers"`

	// groupname
	// Required: true
	GroupName *string `json:"groupName"`

	// groupregion
	// Required: true
	GroupRegion *string `json:"groupRegion"`

	// grouprules
	// Required: true
	GroupRules *ModelsGroupRuleResponseV1 `json:"groupRules"`

	// grouptype
	// Enum: ['OPEN', 'PRIVATE', 'PUBLIC']
	// Required: true
	GroupType *string `json:"groupType"`
}

// Validate validates this Models group response V1
func (m *ModelsGroupResponseV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigurationCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupIcon(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupMaxMember(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupMembers(formats); err != nil {
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

func (m *ModelsGroupResponseV1) validateConfigurationCode(formats strfmt.Registry) error {

	if err := validate.Required("configurationCode", "body", m.ConfigurationCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupResponseV1) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupResponseV1) validateGroupDescription(formats strfmt.Registry) error {

	if err := validate.Required("groupDescription", "body", m.GroupDescription); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupResponseV1) validateGroupIcon(formats strfmt.Registry) error {

	if err := validate.Required("groupIcon", "body", m.GroupIcon); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupResponseV1) validateGroupID(formats strfmt.Registry) error {

	if err := validate.Required("groupId", "body", m.GroupID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupResponseV1) validateGroupMaxMember(formats strfmt.Registry) error {

	if err := validate.Required("groupMaxMember", "body", m.GroupMaxMember); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupResponseV1) validateGroupMembers(formats strfmt.Registry) error {

	if err := validate.Required("groupMembers", "body", m.GroupMembers); err != nil {
		return err
	}

	for i := 0; i < len(m.GroupMembers); i++ {
		if swag.IsZero(m.GroupMembers[i]) { // not required
			continue
		}

		if m.GroupMembers[i] != nil {
			if err := m.GroupMembers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("groupMembers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsGroupResponseV1) validateGroupName(formats strfmt.Registry) error {

	if err := validate.Required("groupName", "body", m.GroupName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupResponseV1) validateGroupRegion(formats strfmt.Registry) error {

	if err := validate.Required("groupRegion", "body", m.GroupRegion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupResponseV1) validateGroupRules(formats strfmt.Registry) error {

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

var modelsGroupResponseV1TypeGroupTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["OPEN", "PRIVATE", "PUBLIC"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsGroupResponseV1TypeGroupTypePropEnum = append(modelsGroupResponseV1TypeGroupTypePropEnum, v)
	}
}

const (

	// ModelsGroupResponseV1GroupTypeOPEN captures enum value "OPEN"
	ModelsGroupResponseV1GroupTypeOPEN string = "OPEN"

	// ModelsGroupResponseV1GroupTypePRIVATE captures enum value "PRIVATE"
	ModelsGroupResponseV1GroupTypePRIVATE string = "PRIVATE"

	// ModelsGroupResponseV1GroupTypePUBLIC captures enum value "PUBLIC"
	ModelsGroupResponseV1GroupTypePUBLIC string = "PUBLIC"
)

// prop value enum
func (m *ModelsGroupResponseV1) validateGroupTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsGroupResponseV1TypeGroupTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsGroupResponseV1) validateGroupType(formats strfmt.Registry) error {

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
func (m *ModelsGroupResponseV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGroupResponseV1) UnmarshalBinary(b []byte) error {
	var res ModelsGroupResponseV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// ModelsUpdateGroupRequestV1 Models update group request V1
//
// swagger:model Models update group request V1.
type ModelsUpdateGroupRequestV1 struct {

	// customattributes
	// Required: true
	CustomAttributes ModelsUpdateGroupRequestV1CustomAttributes `json:"customAttributes"`

	// groupdescription
	// Required: true
	GroupDescription *string `json:"groupDescription"`

	// groupicon
	// Required: true
	GroupIcon *string `json:"groupIcon"`

	// groupname
	// Required: true
	GroupName *string `json:"groupName"`

	// groupregion
	// Required: true
	GroupRegion *string `json:"groupRegion"`

	// grouptype
	// Enum: ['OPEN', 'PRIVATE', 'PUBLIC']
	// Required: true
	GroupType *string `json:"groupType"`
}

// Validate validates this Models update group request V1
func (m *ModelsUpdateGroupRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCustomAttributes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupIcon(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupRegion(formats); err != nil {
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

func (m *ModelsUpdateGroupRequestV1) validateCustomAttributes(formats strfmt.Registry) error {

	if err := validate.Required("customAttributes", "body", m.CustomAttributes); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateGroupRequestV1) validateGroupDescription(formats strfmt.Registry) error {

	if err := validate.Required("groupDescription", "body", m.GroupDescription); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateGroupRequestV1) validateGroupIcon(formats strfmt.Registry) error {

	if err := validate.Required("groupIcon", "body", m.GroupIcon); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateGroupRequestV1) validateGroupName(formats strfmt.Registry) error {

	if err := validate.Required("groupName", "body", m.GroupName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateGroupRequestV1) validateGroupRegion(formats strfmt.Registry) error {

	if err := validate.Required("groupRegion", "body", m.GroupRegion); err != nil {
		return err
	}

	return nil
}

var modelsUpdateGroupRequestV1TypeGroupTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["OPEN", "PRIVATE", "PUBLIC"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsUpdateGroupRequestV1TypeGroupTypePropEnum = append(modelsUpdateGroupRequestV1TypeGroupTypePropEnum, v)
	}
}

const (

	// ModelsUpdateGroupRequestV1GroupTypeOPEN captures enum value "OPEN"
	ModelsUpdateGroupRequestV1GroupTypeOPEN string = "OPEN"

	// ModelsUpdateGroupRequestV1GroupTypePRIVATE captures enum value "PRIVATE"
	ModelsUpdateGroupRequestV1GroupTypePRIVATE string = "PRIVATE"

	// ModelsUpdateGroupRequestV1GroupTypePUBLIC captures enum value "PUBLIC"
	ModelsUpdateGroupRequestV1GroupTypePUBLIC string = "PUBLIC"
)

// prop value enum
func (m *ModelsUpdateGroupRequestV1) validateGroupTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsUpdateGroupRequestV1TypeGroupTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsUpdateGroupRequestV1) validateGroupType(formats strfmt.Registry) error {

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
func (m *ModelsUpdateGroupRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateGroupRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateGroupRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

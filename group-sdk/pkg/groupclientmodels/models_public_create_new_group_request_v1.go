// Code generated by go-swagger; DO NOT EDIT.

package groupclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPublicCreateNewGroupRequestV1 models public create new group request v1
//
// swagger:model models.PublicCreateNewGroupRequestV1
type ModelsPublicCreateNewGroupRequestV1 struct {

	// configuration code
	// Required: true
	ConfigurationCode *string `json:"configurationCode"`

	// custom attributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`

	// group description
	// Required: true
	GroupDescription *string `json:"groupDescription"`

	// group icon
	// Required: true
	GroupIcon *string `json:"groupIcon"`

	// group max member
	// Required: true
	GroupMaxMember *int32 `json:"groupMaxMember"`

	// group name
	// Required: true
	GroupName *string `json:"groupName"`

	// group region
	// Required: true
	GroupRegion *string `json:"groupRegion"`

	// group rules
	// Required: true
	GroupRules *ModelsGroupRule `json:"groupRules"`

	// group type
	// Required: true
	GroupType *string `json:"groupType"`
}

// Validate validates this models public create new group request v1
func (m *ModelsPublicCreateNewGroupRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigurationCode(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCustomAttributes(formats); err != nil {
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

func (m *ModelsPublicCreateNewGroupRequestV1) validateCustomAttributes(formats strfmt.Registry) error {

	if err := validate.Required("customAttributes", "body", m.CustomAttributes); err != nil {
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

func (m *ModelsPublicCreateNewGroupRequestV1) validateGroupType(formats strfmt.Registry) error {

	if err := validate.Required("groupType", "body", m.GroupType); err != nil {
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

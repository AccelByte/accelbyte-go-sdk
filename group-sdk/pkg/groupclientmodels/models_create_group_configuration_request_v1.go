// Code generated by go-swagger; DO NOT EDIT.

package groupclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreateGroupConfigurationRequestV1 models create group configuration request v1
//
// swagger:model models.CreateGroupConfigurationRequestV1
type ModelsCreateGroupConfigurationRequestV1 struct {

	// allow multiple
	// Required: true
	AllowMultiple bool `json:"allowMultiple"`

	// configuration code
	// Required: true
	ConfigurationCode *string `json:"configurationCode"`

	// description
	// Required: true
	Description *string `json:"description"`

	// global rules
	// Required: true
	GlobalRules []*ModelsRule `json:"globalRules"`

	// group admin role Id
	// Required: true
	GroupAdminRoleID *string `json:"groupAdminRoleId"`

	// group max member
	// Required: true
	GroupMaxMember *int32 `json:"groupMaxMember"`

	// group member role Id
	// Required: true
	GroupMemberRoleID *string `json:"groupMemberRoleId"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this models create group configuration request v1
func (m *ModelsCreateGroupConfigurationRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowMultiple(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateConfigurationCode(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateGlobalRules(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateGroupAdminRoleID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateGroupMaxMember(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateGroupMemberRoleID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateGroupConfigurationRequestV1) validateAllowMultiple(formats strfmt.Registry) error {

	if err := validate.Required("allowMultiple", "body", bool(m.AllowMultiple)); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupConfigurationRequestV1) validateConfigurationCode(formats strfmt.Registry) error {

	if err := validate.Required("configurationCode", "body", m.ConfigurationCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupConfigurationRequestV1) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupConfigurationRequestV1) validateGlobalRules(formats strfmt.Registry) error {

	if err := validate.Required("globalRules", "body", m.GlobalRules); err != nil {
		return err
	}

	for i := 0; i < len(m.GlobalRules); i++ {
		if swag.IsZero(m.GlobalRules[i]) { // not required
			continue
		}

		if m.GlobalRules[i] != nil {
			if err := m.GlobalRules[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("globalRules" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsCreateGroupConfigurationRequestV1) validateGroupAdminRoleID(formats strfmt.Registry) error {

	if err := validate.Required("groupAdminRoleId", "body", m.GroupAdminRoleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupConfigurationRequestV1) validateGroupMaxMember(formats strfmt.Registry) error {

	if err := validate.Required("groupMaxMember", "body", m.GroupMaxMember); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupConfigurationRequestV1) validateGroupMemberRoleID(formats strfmt.Registry) error {

	if err := validate.Required("groupMemberRoleId", "body", m.GroupMemberRoleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupConfigurationRequestV1) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateGroupConfigurationRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateGroupConfigurationRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsCreateGroupConfigurationRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

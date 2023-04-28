// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUpdateGroupConfigurationRequestV1 Models update group configuration request V1
//
// swagger:model Models update group configuration request V1.
type ModelsUpdateGroupConfigurationRequestV1 struct {

	// description
	// Required: true
	Description *string `json:"description"`

	// groupmaxmember
	// Required: true
	// Format: int32
	GroupMaxMember *int32 `json:"groupMaxMember"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Models update group configuration request V1
func (m *ModelsUpdateGroupConfigurationRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupMaxMember(formats); err != nil {
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

func (m *ModelsUpdateGroupConfigurationRequestV1) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateGroupConfigurationRequestV1) validateGroupMaxMember(formats strfmt.Registry) error {

	if err := validate.Required("groupMaxMember", "body", m.GroupMaxMember); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateGroupConfigurationRequestV1) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateGroupConfigurationRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateGroupConfigurationRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateGroupConfigurationRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

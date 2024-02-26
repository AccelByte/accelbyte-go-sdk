// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ClientmodelClientTemplate Clientmodel client template
//
// swagger:model Clientmodel client template.
type ClientmodelClientTemplate struct {

	// basicrequiredpermissions
	// Required: true
	BasicRequiredPermissions []*AccountcommonClientModulePermission `json:"basicRequiredPermissions"`

	// defaultvalues
	// Required: true
	DefaultValues []*ClientmodelDefaultFieldValue `json:"defaultValues"`

	// description
	// Required: true
	Description *string `json:"description"`

	// id
	// Required: true
	ID *string `json:"id"`

	// requiredfields
	// Required: true
	RequiredFields []string `json:"requiredFields"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Clientmodel client template
func (m *ClientmodelClientTemplate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBasicRequiredPermissions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultValues(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequiredFields(formats); err != nil {
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

func (m *ClientmodelClientTemplate) validateBasicRequiredPermissions(formats strfmt.Registry) error {

	if err := validate.Required("basicRequiredPermissions", "body", m.BasicRequiredPermissions); err != nil {
		return err
	}

	for i := 0; i < len(m.BasicRequiredPermissions); i++ {
		if swag.IsZero(m.BasicRequiredPermissions[i]) { // not required
			continue
		}

		if m.BasicRequiredPermissions[i] != nil {
			if err := m.BasicRequiredPermissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("basicRequiredPermissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ClientmodelClientTemplate) validateDefaultValues(formats strfmt.Registry) error {

	if err := validate.Required("defaultValues", "body", m.DefaultValues); err != nil {
		return err
	}

	for i := 0; i < len(m.DefaultValues); i++ {
		if swag.IsZero(m.DefaultValues[i]) { // not required
			continue
		}

		if m.DefaultValues[i] != nil {
			if err := m.DefaultValues[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("defaultValues" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ClientmodelClientTemplate) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientTemplate) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientTemplate) validateRequiredFields(formats strfmt.Registry) error {

	if err := validate.Required("requiredFields", "body", m.RequiredFields); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientTemplate) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientTemplate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientTemplate) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientTemplate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

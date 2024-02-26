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

// AccountcommonClientModulePermission Accountcommon client module permission
//
// swagger:model Accountcommon client module permission.
type AccountcommonClientModulePermission struct {

	// moduleid
	// Required: true
	ModuleID *string `json:"moduleId"`

	// selectedgroups
	// Required: true
	SelectedGroups []*AccountcommonClientSelectedGroup `json:"selectedGroups"`
}

// Validate validates this Accountcommon client module permission
func (m *AccountcommonClientModulePermission) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateModuleID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSelectedGroups(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonClientModulePermission) validateModuleID(formats strfmt.Registry) error {

	if err := validate.Required("moduleId", "body", m.ModuleID); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonClientModulePermission) validateSelectedGroups(formats strfmt.Registry) error {

	if err := validate.Required("selectedGroups", "body", m.SelectedGroups); err != nil {
		return err
	}

	for i := 0; i < len(m.SelectedGroups); i++ {
		if swag.IsZero(m.SelectedGroups[i]) { // not required
			continue
		}

		if m.SelectedGroups[i] != nil {
			if err := m.SelectedGroups[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("selectedGroups" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonClientModulePermission) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonClientModulePermission) UnmarshalBinary(b []byte) error {
	var res AccountcommonClientModulePermission
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

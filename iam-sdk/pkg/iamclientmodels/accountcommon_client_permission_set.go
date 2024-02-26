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

// AccountcommonClientPermissionSet Accountcommon client permission set
//
// swagger:model Accountcommon client permission set.
type AccountcommonClientPermissionSet struct {

	// doclink
	// Required: true
	DocLink *string `json:"docLink"`

	// groups
	// Required: true
	Groups []*AccountcommonPermissionGroup `json:"groups"`

	// module
	// Required: true
	Module *string `json:"module"`

	// moduleid
	// Required: true
	ModuleID *string `json:"moduleId"`
}

// Validate validates this Accountcommon client permission set
func (m *AccountcommonClientPermissionSet) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDocLink(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroups(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateModule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateModuleID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonClientPermissionSet) validateDocLink(formats strfmt.Registry) error {

	if err := validate.Required("docLink", "body", m.DocLink); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonClientPermissionSet) validateGroups(formats strfmt.Registry) error {

	if err := validate.Required("groups", "body", m.Groups); err != nil {
		return err
	}

	for i := 0; i < len(m.Groups); i++ {
		if swag.IsZero(m.Groups[i]) { // not required
			continue
		}

		if m.Groups[i] != nil {
			if err := m.Groups[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("groups" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *AccountcommonClientPermissionSet) validateModule(formats strfmt.Registry) error {

	if err := validate.Required("module", "body", m.Module); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonClientPermissionSet) validateModuleID(formats strfmt.Registry) error {

	if err := validate.Required("moduleId", "body", m.ModuleID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonClientPermissionSet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonClientPermissionSet) UnmarshalBinary(b []byte) error {
	var res AccountcommonClientPermissionSet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

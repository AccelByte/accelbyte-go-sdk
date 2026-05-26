// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ClientmodelModulePackage Clientmodel module package
//
// swagger:model Clientmodel module package.
type ClientmodelModulePackage struct {

	// moduleid
	// Required: true
	ModuleID *string `json:"moduleId"`

	// package
	// Required: true
	Package *string `json:"package"`
}

// Validate validates this Clientmodel module package
func (m *ClientmodelModulePackage) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateModuleID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePackage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelModulePackage) validateModuleID(formats strfmt.Registry) error {

	if err := validate.Required("moduleId", "body", m.ModuleID); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelModulePackage) validatePackage(formats strfmt.Registry) error {

	if err := validate.Required("package", "body", m.Package); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelModulePackage) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelModulePackage) UnmarshalBinary(b []byte) error {
	var res ClientmodelModulePackage
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

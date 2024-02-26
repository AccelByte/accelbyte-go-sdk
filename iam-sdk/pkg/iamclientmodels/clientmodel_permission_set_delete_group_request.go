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

// ClientmodelPermissionSetDeleteGroupRequest Clientmodel permission set delete group request
//
// swagger:model Clientmodel permission set delete group request.
type ClientmodelPermissionSetDeleteGroupRequest struct {

	// groupid
	// Required: true
	GroupID *string `json:"groupId"`

	// moduleid
	// Required: true
	ModuleID *string `json:"moduleId"`
}

// Validate validates this Clientmodel permission set delete group request
func (m *ClientmodelPermissionSetDeleteGroupRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupID(formats); err != nil {
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

func (m *ClientmodelPermissionSetDeleteGroupRequest) validateGroupID(formats strfmt.Registry) error {

	if err := validate.Required("groupId", "body", m.GroupID); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelPermissionSetDeleteGroupRequest) validateModuleID(formats strfmt.Registry) error {

	if err := validate.Required("moduleId", "body", m.ModuleID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelPermissionSetDeleteGroupRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelPermissionSetDeleteGroupRequest) UnmarshalBinary(b []byte) error {
	var res ClientmodelPermissionSetDeleteGroupRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

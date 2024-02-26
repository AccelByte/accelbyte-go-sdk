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

// ClientmodelListClientPermissionSet Clientmodel list client permission set
//
// swagger:model Clientmodel list client permission set.
type ClientmodelListClientPermissionSet struct {

	// clientpermissions
	// Required: true
	ClientPermissions []*AccountcommonClientPermissionSet `json:"clientPermissions"`
}

// Validate validates this Clientmodel list client permission set
func (m *ClientmodelListClientPermissionSet) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientPermissions(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelListClientPermissionSet) validateClientPermissions(formats strfmt.Registry) error {

	if err := validate.Required("clientPermissions", "body", m.ClientPermissions); err != nil {
		return err
	}

	for i := 0; i < len(m.ClientPermissions); i++ {
		if swag.IsZero(m.ClientPermissions[i]) { // not required
			continue
		}

		if m.ClientPermissions[i] != nil {
			if err := m.ClientPermissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("clientPermissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelListClientPermissionSet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelListClientPermissionSet) UnmarshalBinary(b []byte) error {
	var res ClientmodelListClientPermissionSet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

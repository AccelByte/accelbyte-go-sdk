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

// ModelRoleManagersResponse Model role managers response
//
// swagger:model Model role managers response.
type ModelRoleManagersResponse struct {

	// managers
	// Required: true
	Managers []*AccountcommonRoleManager `json:"Managers"`
}

// Validate validates this Model role managers response
func (m *ModelRoleManagersResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateManagers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelRoleManagersResponse) validateManagers(formats strfmt.Registry) error {

	if err := validate.Required("Managers", "body", m.Managers); err != nil {
		return err
	}

	for i := 0; i < len(m.Managers); i++ {
		if swag.IsZero(m.Managers[i]) { // not required
			continue
		}

		if m.Managers[i] != nil {
			if err := m.Managers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Managers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleManagersResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleManagersResponse) UnmarshalBinary(b []byte) error {
	var res ModelRoleManagersResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

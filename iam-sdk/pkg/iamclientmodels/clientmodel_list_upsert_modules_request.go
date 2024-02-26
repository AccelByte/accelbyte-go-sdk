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

// ClientmodelListUpsertModulesRequest Clientmodel list upsert modules request
//
// swagger:model Clientmodel list upsert modules request.
type ClientmodelListUpsertModulesRequest struct {

	// modules
	// Required: true
	Modules []*ClientmodelPermissionSetUpsertRequest `json:"modules"`
}

// Validate validates this Clientmodel list upsert modules request
func (m *ClientmodelListUpsertModulesRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateModules(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelListUpsertModulesRequest) validateModules(formats strfmt.Registry) error {

	if err := validate.Required("modules", "body", m.Modules); err != nil {
		return err
	}

	for i := 0; i < len(m.Modules); i++ {
		if swag.IsZero(m.Modules[i]) { // not required
			continue
		}

		if m.Modules[i] != nil {
			if err := m.Modules[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("modules" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelListUpsertModulesRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelListUpsertModulesRequest) UnmarshalBinary(b []byte) error {
	var res ClientmodelListUpsertModulesRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

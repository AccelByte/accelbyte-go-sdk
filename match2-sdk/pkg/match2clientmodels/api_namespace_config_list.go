// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APINamespaceConfigList Api namespace config list
//
// swagger:model Api namespace config list.
type APINamespaceConfigList struct {

	// configs
	// Required: true
	Configs []*ConfigmodelsNamespaceConfig `json:"configs"`
}

// Validate validates this Api namespace config list
func (m *APINamespaceConfigList) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APINamespaceConfigList) validateConfigs(formats strfmt.Registry) error {

	if err := validate.Required("configs", "body", m.Configs); err != nil {
		return err
	}

	for i := 0; i < len(m.Configs); i++ {
		if swag.IsZero(m.Configs[i]) { // not required
			continue
		}

		if m.Configs[i] != nil {
			if err := m.Configs[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("configs" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *APINamespaceConfigList) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APINamespaceConfigList) UnmarshalBinary(b []byte) error {
	var res APINamespaceConfigList
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

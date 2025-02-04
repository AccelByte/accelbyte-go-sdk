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

// AccountcommonSSOConfig Accountcommon sso config
//
// swagger:model Accountcommon sso config.
type AccountcommonSSOConfig struct {

	// Can't be null, If empty, need set it as {}'
	// Required: true
	GoogleKey interface{} `json:"googleKey"`

	// groupconfigs
	// Required: true
	GroupConfigs []*AccountcommonGroupAndRoleMappingForUpdate `json:"groupConfigs"`
}

// Validate validates this Accountcommon sso config
func (m *AccountcommonSSOConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupConfigs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonSSOConfig) validateGroupConfigs(formats strfmt.Registry) error {

	if err := validate.Required("groupConfigs", "body", m.GroupConfigs); err != nil {
		return err
	}

	for i := 0; i < len(m.GroupConfigs); i++ {
		if swag.IsZero(m.GroupConfigs[i]) { // not required
			continue
		}

		if m.GroupConfigs[i] != nil {
			if err := m.GroupConfigs[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("groupConfigs" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonSSOConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonSSOConfig) UnmarshalBinary(b []byte) error {
	var res AccountcommonSSOConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDefaultDSMCConfig Models default DSMC config
//
// swagger:model Models default DSMC config.
type ModelsDefaultDSMCConfig struct {

	// claim_timeout
	// Required: true
	// Format: int32
	ClaimTimeout int32 `json:"claim_timeout"`

	// creation_timeout
	// Required: true
	// Format: int32
	CreationTimeout int32 `json:"creation_timeout"`
}

// Validate validates this Models default DSMC config
func (m *ModelsDefaultDSMCConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClaimTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreationTimeout(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDefaultDSMCConfig) validateClaimTimeout(formats strfmt.Registry) error {

	if err := validate.Required("claim_timeout", "body", m.ClaimTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDefaultDSMCConfig) validateCreationTimeout(formats strfmt.Registry) error {

	if err := validate.Required("creation_timeout", "body", m.CreationTimeout); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDefaultDSMCConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDefaultDSMCConfig) UnmarshalBinary(b []byte) error {
	var res ModelsDefaultDSMCConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

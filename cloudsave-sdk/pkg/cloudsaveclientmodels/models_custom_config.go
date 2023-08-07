// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCustomConfig Models custom config
//
// swagger:model Models custom config.
type ModelsCustomConfig struct {

	// grpcaddress
	// Required: true
	GRPCAddress *string `json:"GRPCAddress"`
}

// Validate validates this Models custom config
func (m *ModelsCustomConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGRPCAddress(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCustomConfig) validateGRPCAddress(formats strfmt.Registry) error {

	if err := validate.Required("GRPCAddress", "body", m.GRPCAddress); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCustomConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCustomConfig) UnmarshalBinary(b []byte) error {
	var res ModelsCustomConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

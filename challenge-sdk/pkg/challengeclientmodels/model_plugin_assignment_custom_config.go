// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelPluginAssignmentCustomConfig Model plugin assignment custom config
//
// swagger:model Model plugin assignment custom config.
type ModelPluginAssignmentCustomConfig struct {

	// grpcserveraddress
	// Required: true
	GrpcServerAddress *string `json:"grpcServerAddress"`
}

// Validate validates this Model plugin assignment custom config
func (m *ModelPluginAssignmentCustomConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGrpcServerAddress(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPluginAssignmentCustomConfig) validateGrpcServerAddress(formats strfmt.Registry) error {

	if err := validate.Required("grpcServerAddress", "body", m.GrpcServerAddress); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPluginAssignmentCustomConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPluginAssignmentCustomConfig) UnmarshalBinary(b []byte) error {
	var res ModelPluginAssignmentCustomConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

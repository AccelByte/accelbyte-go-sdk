// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ServicePluginConfigUpdate Service plugin config update
//
// swagger:model Service plugin config update.
type ServicePluginConfigUpdate struct {

	// plugin grpc server address: <host>:<port>
	GrpcServerAddress string `json:"grpcServerAddress,omitempty"`
}

// Validate validates this Service plugin config update
func (m *ServicePluginConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ServicePluginConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ServicePluginConfigUpdate) UnmarshalBinary(b []byte) error {
	var res ServicePluginConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

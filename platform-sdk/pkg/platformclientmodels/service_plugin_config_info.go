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

// ServicePluginConfigInfo Service plugin config info
//
// swagger:model Service plugin config info.
type ServicePluginConfigInfo struct {

	// plugin grpc server address: <host>:<port>
	GrpcServerAddress string `json:"grpcServerAddress,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this Service plugin config info
func (m *ServicePluginConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ServicePluginConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ServicePluginConfigInfo) UnmarshalBinary(b []byte) error {
	var res ServicePluginConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

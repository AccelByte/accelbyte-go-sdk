// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// GrpcServerInfo Grpc server info
//
// swagger:model Grpc server info.
type GrpcServerInfo struct {

	// address
	Address string `json:"address,omitempty"`

	// connectiontypeenum
	// Enum: ['INSECURE', 'TLS']
	ConnectionTypeEnum string `json:"connectionTypeEnum,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// tlsconfig
	TLSConfig *TLSConfig `json:"tlsConfig,omitempty"`
}

// Validate validates this Grpc server info
func (m *GrpcServerInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var grpcServerInfoTypeConnectionTypeEnumPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INSECURE", "TLS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		grpcServerInfoTypeConnectionTypeEnumPropEnum = append(grpcServerInfoTypeConnectionTypeEnumPropEnum, v)
	}
}

const (

	// GrpcServerInfoConnectionTypeEnumINSECURE captures enum value "INSECURE"
	GrpcServerInfoConnectionTypeEnumINSECURE string = "INSECURE"

	// GrpcServerInfoConnectionTypeEnumTLS captures enum value "TLS"
	GrpcServerInfoConnectionTypeEnumTLS string = "TLS"
)

// prop value enum
func (m *GrpcServerInfo) validateConnectionTypeEnumEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, grpcServerInfoTypeConnectionTypeEnumPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GrpcServerInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GrpcServerInfo) UnmarshalBinary(b []byte) error {
	var res GrpcServerInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

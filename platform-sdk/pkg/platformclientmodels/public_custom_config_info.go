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

// PublicCustomConfigInfo Public custom config info
//
// swagger:model Public custom config info.
type PublicCustomConfigInfo struct {

	// connect type: INSECURE, TLS, default is INSECURE
	// Enum: ['INSECURE', 'TLS']
	// Required: true
	ConnectionType *string `json:"connectionType"`

	// plugin grpc server address: <host>:<port>
	// Required: true
	GrpcServerAddress *string `json:"grpcServerAddress"`

	// tlsconfig
	TLSConfig *BaseTLSConfig `json:"tlsConfig,omitempty"`
}

// Validate validates this Public custom config info
func (m *PublicCustomConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConnectionType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGrpcServerAddress(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var publicCustomConfigInfoTypeConnectionTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INSECURE", "TLS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		publicCustomConfigInfoTypeConnectionTypePropEnum = append(publicCustomConfigInfoTypeConnectionTypePropEnum, v)
	}
}

const (

	// PublicCustomConfigInfoConnectionTypeINSECURE captures enum value "INSECURE"
	PublicCustomConfigInfoConnectionTypeINSECURE string = "INSECURE"

	// PublicCustomConfigInfoConnectionTypeTLS captures enum value "TLS"
	PublicCustomConfigInfoConnectionTypeTLS string = "TLS"
)

// prop value enum
func (m *PublicCustomConfigInfo) validateConnectionTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, publicCustomConfigInfoTypeConnectionTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PublicCustomConfigInfo) validateConnectionType(formats strfmt.Registry) error {

	if err := validate.Required("connectionType", "body", m.ConnectionType); err != nil {
		return err
	}

	// value enum
	if err := m.validateConnectionTypeEnum("connectionType", "body", *m.ConnectionType); err != nil {
		return err
	}

	return nil
}

func (m *PublicCustomConfigInfo) validateGrpcServerAddress(formats strfmt.Registry) error {

	if err := validate.Required("grpcServerAddress", "body", m.GrpcServerAddress); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PublicCustomConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PublicCustomConfigInfo) UnmarshalBinary(b []byte) error {
	var res PublicCustomConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

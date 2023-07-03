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

// RevocationPluginConfigInfo Revocation plugin config info
//
// swagger:model Revocation plugin config info.
type RevocationPluginConfigInfo struct {

	// app config
	AppConfig *AppConfig `json:"appConfig,omitempty"`

	// custom config
	CustomConfig *PublicCustomConfigInfo `json:"customConfig,omitempty"`

	// extend type
	// Enum: ['APP', 'CUSTOM']
	ExtendType string `json:"extendType,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Revocation plugin config info
func (m *RevocationPluginConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revocationPluginConfigInfoTypeExtendTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CUSTOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revocationPluginConfigInfoTypeExtendTypePropEnum = append(revocationPluginConfigInfoTypeExtendTypePropEnum, v)
	}
}

const (

	// RevocationPluginConfigInfoExtendTypeAPP captures enum value "APP"
	RevocationPluginConfigInfoExtendTypeAPP string = "APP"

	// RevocationPluginConfigInfoExtendTypeCUSTOM captures enum value "CUSTOM"
	RevocationPluginConfigInfoExtendTypeCUSTOM string = "CUSTOM"
)

// prop value enum
func (m *RevocationPluginConfigInfo) validateExtendTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revocationPluginConfigInfoTypeExtendTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RevocationPluginConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RevocationPluginConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevocationPluginConfigInfo) UnmarshalBinary(b []byte) error {
	var res RevocationPluginConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

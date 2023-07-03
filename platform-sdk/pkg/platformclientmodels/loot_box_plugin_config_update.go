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

// LootBoxPluginConfigUpdate Loot box plugin config update
//
// swagger:model Loot box plugin config update.
type LootBoxPluginConfigUpdate struct {

	// app config
	AppConfig *AppConfig `json:"appConfig,omitempty"`

	// custom config
	CustomConfig *BaseCustomConfig `json:"customConfig,omitempty"`

	// extend type
	// Enum: ['APP', 'CUSTOM']
	// Required: true
	ExtendType *string `json:"extendType"`
}

// Validate validates this Loot box plugin config update
func (m *LootBoxPluginConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExtendType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var lootBoxPluginConfigUpdateTypeExtendTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CUSTOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		lootBoxPluginConfigUpdateTypeExtendTypePropEnum = append(lootBoxPluginConfigUpdateTypeExtendTypePropEnum, v)
	}
}

const (

	// LootBoxPluginConfigUpdateExtendTypeAPP captures enum value "APP"
	LootBoxPluginConfigUpdateExtendTypeAPP string = "APP"

	// LootBoxPluginConfigUpdateExtendTypeCUSTOM captures enum value "CUSTOM"
	LootBoxPluginConfigUpdateExtendTypeCUSTOM string = "CUSTOM"
)

// prop value enum
func (m *LootBoxPluginConfigUpdate) validateExtendTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, lootBoxPluginConfigUpdateTypeExtendTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *LootBoxPluginConfigUpdate) validateExtendType(formats strfmt.Registry) error {

	if err := validate.Required("extendType", "body", m.ExtendType); err != nil {
		return err
	}

	// value enum
	if err := m.validateExtendTypeEnum("extendType", "body", *m.ExtendType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *LootBoxPluginConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *LootBoxPluginConfigUpdate) UnmarshalBinary(b []byte) error {
	var res LootBoxPluginConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

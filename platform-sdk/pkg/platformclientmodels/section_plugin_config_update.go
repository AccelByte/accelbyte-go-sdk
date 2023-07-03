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

// SectionPluginConfigUpdate Section plugin config update
//
// swagger:model Section plugin config update.
type SectionPluginConfigUpdate struct {

	// app config
	AppConfig *AppConfig `json:"appConfig,omitempty"`

	// custom config
	CustomConfig *BaseCustomConfig `json:"customConfig,omitempty"`

	// extend type
	// Enum: ['APP', 'CUSTOM']
	// Required: true
	ExtendType *string `json:"extendType"`
}

// Validate validates this Section plugin config update
func (m *SectionPluginConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExtendType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var sectionPluginConfigUpdateTypeExtendTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CUSTOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		sectionPluginConfigUpdateTypeExtendTypePropEnum = append(sectionPluginConfigUpdateTypeExtendTypePropEnum, v)
	}
}

const (

	// SectionPluginConfigUpdateExtendTypeAPP captures enum value "APP"
	SectionPluginConfigUpdateExtendTypeAPP string = "APP"

	// SectionPluginConfigUpdateExtendTypeCUSTOM captures enum value "CUSTOM"
	SectionPluginConfigUpdateExtendTypeCUSTOM string = "CUSTOM"
)

// prop value enum
func (m *SectionPluginConfigUpdate) validateExtendTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, sectionPluginConfigUpdateTypeExtendTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SectionPluginConfigUpdate) validateExtendType(formats strfmt.Registry) error {

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
func (m *SectionPluginConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SectionPluginConfigUpdate) UnmarshalBinary(b []byte) error {
	var res SectionPluginConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

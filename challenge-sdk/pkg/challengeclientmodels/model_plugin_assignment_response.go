// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelPluginAssignmentResponse Model plugin assignment response
//
// swagger:model Model plugin assignment response.
type ModelPluginAssignmentResponse struct {

	// appconfig
	AppConfig *ModelPluginAsignmentAppConfig `json:"appConfig,omitempty"`

	// customconfig
	CustomConfig *ModelPluginAssignmentCustomConfig `json:"customConfig,omitempty"`

	// extendtype
	// Enum: ['APP', 'CUSTOM']
	// Required: true
	ExtendType *string `json:"extendType"`
}

// Validate validates this Model plugin assignment response
func (m *ModelPluginAssignmentResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExtendType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelPluginAssignmentResponseTypeExtendTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CUSTOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelPluginAssignmentResponseTypeExtendTypePropEnum = append(modelPluginAssignmentResponseTypeExtendTypePropEnum, v)
	}
}

const (

	// ModelPluginAssignmentResponseExtendTypeAPP captures enum value "APP"
	ModelPluginAssignmentResponseExtendTypeAPP string = "APP"

	// ModelPluginAssignmentResponseExtendTypeCUSTOM captures enum value "CUSTOM"
	ModelPluginAssignmentResponseExtendTypeCUSTOM string = "CUSTOM"
)

// prop value enum
func (m *ModelPluginAssignmentResponse) validateExtendTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelPluginAssignmentResponseTypeExtendTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelPluginAssignmentResponse) validateExtendType(formats strfmt.Registry) error {

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
func (m *ModelPluginAssignmentResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPluginAssignmentResponse) UnmarshalBinary(b []byte) error {
	var res ModelPluginAssignmentResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

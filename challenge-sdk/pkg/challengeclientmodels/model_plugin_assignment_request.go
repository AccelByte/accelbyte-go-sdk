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

// ModelPluginAssignmentRequest Model plugin assignment request
//
// swagger:model Model plugin assignment request.
type ModelPluginAssignmentRequest struct {

	// appname
	AppName string `json:"appName,omitempty"`

	// extendtype
	// Enum: ['APP', 'CUSTOM']
	// Required: true
	ExtendType *string `json:"extendType"`

	// grpcserveraddress
	GrpcServerAddress string `json:"grpcServerAddress,omitempty"`
}

// Validate validates this Model plugin assignment request
func (m *ModelPluginAssignmentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExtendType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelPluginAssignmentRequestTypeExtendTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CUSTOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelPluginAssignmentRequestTypeExtendTypePropEnum = append(modelPluginAssignmentRequestTypeExtendTypePropEnum, v)
	}
}

const (

	// ModelPluginAssignmentRequestExtendTypeAPP captures enum value "APP"
	ModelPluginAssignmentRequestExtendTypeAPP string = "APP"

	// ModelPluginAssignmentRequestExtendTypeCUSTOM captures enum value "CUSTOM"
	ModelPluginAssignmentRequestExtendTypeCUSTOM string = "CUSTOM"
)

// prop value enum
func (m *ModelPluginAssignmentRequest) validateExtendTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelPluginAssignmentRequestTypeExtendTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelPluginAssignmentRequest) validateExtendType(formats strfmt.Registry) error {

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
func (m *ModelPluginAssignmentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPluginAssignmentRequest) UnmarshalBinary(b []byte) error {
	var res ModelPluginAssignmentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

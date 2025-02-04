// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIExternalFailureMetricRecord Api external failure metric record
//
// swagger:model Api external failure metric record.
type APIExternalFailureMetricRecord struct {

	// type
	// Enum: ['connectDS', 'getExternalDS']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Api external failure metric record
func (m *APIExternalFailureMetricRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var apiExternalFailureMetricRecordTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONNECTDS", "GETEXTERNALDS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apiExternalFailureMetricRecordTypeTypePropEnum = append(apiExternalFailureMetricRecordTypeTypePropEnum, v)
	}
}

const (

	// APIExternalFailureMetricRecordTypeCONNECTDS captures enum value "CONNECTDS"
	APIExternalFailureMetricRecordTypeCONNECTDS string = "CONNECTDS"

	// APIExternalFailureMetricRecordTypeGETEXTERNALDS captures enum value "GETEXTERNALDS"
	APIExternalFailureMetricRecordTypeGETEXTERNALDS string = "GETEXTERNALDS"
)

// prop value enum
func (m *APIExternalFailureMetricRecord) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apiExternalFailureMetricRecordTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *APIExternalFailureMetricRecord) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIExternalFailureMetricRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIExternalFailureMetricRecord) UnmarshalBinary(b []byte) error {
	var res APIExternalFailureMetricRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

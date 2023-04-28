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

// FulfillmentScriptEvalTestRequest Fulfillment script eval test request
//
// swagger:model Fulfillment script eval test request.
type FulfillmentScriptEvalTestRequest struct {

	// fulfillment script context
	// Required: true
	Context *FulfillmentScriptContext `json:"context"`

	// script
	// Required: true
	Script *string `json:"script"`

	// type, default grantDays
	// Enum: ['grantDays']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Fulfillment script eval test request
func (m *FulfillmentScriptEvalTestRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContext(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScript(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *FulfillmentScriptEvalTestRequest) validateContext(formats strfmt.Registry) error {

	if err := validate.Required("context", "body", m.Context); err != nil {
		return err
	}

	if m.Context != nil {
		if err := m.Context.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("context")
			}
			return err
		}
	}

	return nil
}

func (m *FulfillmentScriptEvalTestRequest) validateScript(formats strfmt.Registry) error {

	if err := validate.Required("script", "body", m.Script); err != nil {
		return err
	}

	return nil
}

var fulfillmentScriptEvalTestRequestTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GRANTDAYS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentScriptEvalTestRequestTypeTypePropEnum = append(fulfillmentScriptEvalTestRequestTypeTypePropEnum, v)
	}
}

const (

	// FulfillmentScriptEvalTestRequestTypeGRANTDAYS captures enum value "GRANTDAYS"
	FulfillmentScriptEvalTestRequestTypeGRANTDAYS string = "GRANTDAYS"
)

// prop value enum
func (m *FulfillmentScriptEvalTestRequest) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentScriptEvalTestRequestTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentScriptEvalTestRequest) validateType(formats strfmt.Registry) error {

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
func (m *FulfillmentScriptEvalTestRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentScriptEvalTestRequest) UnmarshalBinary(b []byte) error {
	var res FulfillmentScriptEvalTestRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

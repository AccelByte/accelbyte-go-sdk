// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// StatCreate Stat create
//
// swagger:model Stat create.
type StatCreate struct {

	// cycleids
	// Unique: true
	CycleIds []string `json:"cycleIds"`

	// defaultvalue
	// Required: true
	// Format: double
	DefaultValue *float64 `json:"defaultValue"`

	// description
	Description string `json:"description,omitempty"`

	// ignoreadditionaldataonvaluerejected
	IgnoreAdditionalDataOnValueRejected bool `json:"ignoreAdditionalDataOnValueRejected"`

	// incrementonly
	IncrementOnly bool `json:"incrementOnly"`

	// ispublic
	IsPublic bool `json:"isPublic"`

	// default value is 1.7976931348623157e+308
	// Format: double
	Maximum float64 `json:"maximum,omitempty"`

	// default value is 0.0
	// Format: double
	Minimum float64 `json:"minimum,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// setasglobal
	SetAsGlobal bool `json:"setAsGlobal"`

	// setby
	// Enum: ['CLIENT', 'SERVER']
	// Required: true
	SetBy *string `json:"setBy"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`
}

// Validate validates this Stat create
func (m *StatCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDefaultValue(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSetBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *StatCreate) validateDefaultValue(formats strfmt.Registry) error {

	if err := validate.Required("defaultValue", "body", m.DefaultValue); err != nil {
		return err
	}

	return nil
}

func (m *StatCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var statCreateTypeSetByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statCreateTypeSetByPropEnum = append(statCreateTypeSetByPropEnum, v)
	}
}

const (

	// StatCreateSetByCLIENT captures enum value "CLIENT"
	StatCreateSetByCLIENT string = "CLIENT"

	// StatCreateSetBySERVER captures enum value "SERVER"
	StatCreateSetBySERVER string = "SERVER"
)

// prop value enum
func (m *StatCreate) validateSetByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statCreateTypeSetByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StatCreate) validateSetBy(formats strfmt.Registry) error {

	if err := validate.Required("setBy", "body", m.SetBy); err != nil {
		return err
	}

	// value enum
	if err := m.validateSetByEnum("setBy", "body", *m.SetBy); err != nil {
		return err
	}

	return nil
}

func (m *StatCreate) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StatCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatCreate) UnmarshalBinary(b []byte) error {
	var res StatCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

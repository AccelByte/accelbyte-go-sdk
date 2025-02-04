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

// StatInfo Stat info
//
// swagger:model Stat info.
type StatInfo struct {

	// capcycleoverride
	CapCycleOverride bool `json:"capCycleOverride"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// cycleids
	// Unique: true
	CycleIds []string `json:"cycleIds"`

	// cycleoverrides
	// Unique: true
	CycleOverrides []*CycleOverride `json:"cycleOverrides"`

	// defaultvalue
	// Required: true
	// Format: double
	DefaultValue *float64 `json:"defaultValue"`

	// description
	Description string `json:"description,omitempty"`

	// globalaggregationmethod
	// Enum: ['LAST', 'MAX', 'MIN', 'TOTAL']
	GlobalAggregationMethod string `json:"globalAggregationMethod,omitempty"`

	// ignoreadditionaldataonvaluerejected
	// Required: true
	IgnoreAdditionalDataOnValueRejected *bool `json:"ignoreAdditionalDataOnValueRejected"`

	// incrementonly
	// Required: true
	IncrementOnly *bool `json:"incrementOnly"`

	// ispublic
	// Required: true
	IsPublic *bool `json:"isPublic"`

	// maximum
	// Format: double
	Maximum float64 `json:"maximum,omitempty"`

	// minimum
	// Format: double
	Minimum float64 `json:"minimum,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// setasglobal
	// Required: true
	SetAsGlobal *bool `json:"setAsGlobal"`

	// setby
	// Enum: ['CLIENT', 'SERVER']
	// Required: true
	SetBy *string `json:"setBy"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`

	// status
	// Enum: ['INIT', 'TIED']
	// Required: true
	Status *string `json:"status"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// visibility
	// Enum: ['SERVERONLY', 'SHOWALL']
	Visibility string `json:"visibility,omitempty"`
}

// Validate validates this Stat info
func (m *StatInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultValue(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIgnoreAdditionalDataOnValueRejected(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIncrementOnly(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsPublic(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSetAsGlobal(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSetBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *StatInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *StatInfo) validateDefaultValue(formats strfmt.Registry) error {

	if err := validate.Required("defaultValue", "body", m.DefaultValue); err != nil {
		return err
	}

	return nil
}

var statInfoTypeGlobalAggregationMethodPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LAST", "MAX", "MIN", "TOTAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statInfoTypeGlobalAggregationMethodPropEnum = append(statInfoTypeGlobalAggregationMethodPropEnum, v)
	}
}

const (

	// StatInfoGlobalAggregationMethodLAST captures enum value "LAST"
	StatInfoGlobalAggregationMethodLAST string = "LAST"

	// StatInfoGlobalAggregationMethodMAX captures enum value "MAX"
	StatInfoGlobalAggregationMethodMAX string = "MAX"

	// StatInfoGlobalAggregationMethodMIN captures enum value "MIN"
	StatInfoGlobalAggregationMethodMIN string = "MIN"

	// StatInfoGlobalAggregationMethodTOTAL captures enum value "TOTAL"
	StatInfoGlobalAggregationMethodTOTAL string = "TOTAL"
)

// prop value enum
func (m *StatInfo) validateGlobalAggregationMethodEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statInfoTypeGlobalAggregationMethodPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StatInfo) validateIgnoreAdditionalDataOnValueRejected(formats strfmt.Registry) error {

	if err := validate.Required("ignoreAdditionalDataOnValueRejected", "body", m.IgnoreAdditionalDataOnValueRejected); err != nil {
		return err
	}

	return nil
}

func (m *StatInfo) validateIncrementOnly(formats strfmt.Registry) error {

	if err := validate.Required("incrementOnly", "body", m.IncrementOnly); err != nil {
		return err
	}

	return nil
}

func (m *StatInfo) validateIsPublic(formats strfmt.Registry) error {

	if err := validate.Required("isPublic", "body", m.IsPublic); err != nil {
		return err
	}

	return nil
}

func (m *StatInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *StatInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *StatInfo) validateSetAsGlobal(formats strfmt.Registry) error {

	if err := validate.Required("setAsGlobal", "body", m.SetAsGlobal); err != nil {
		return err
	}

	return nil
}

var statInfoTypeSetByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statInfoTypeSetByPropEnum = append(statInfoTypeSetByPropEnum, v)
	}
}

const (

	// StatInfoSetByCLIENT captures enum value "CLIENT"
	StatInfoSetByCLIENT string = "CLIENT"

	// StatInfoSetBySERVER captures enum value "SERVER"
	StatInfoSetBySERVER string = "SERVER"
)

// prop value enum
func (m *StatInfo) validateSetByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statInfoTypeSetByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StatInfo) validateSetBy(formats strfmt.Registry) error {

	if err := validate.Required("setBy", "body", m.SetBy); err != nil {
		return err
	}

	// value enum
	if err := m.validateSetByEnum("setBy", "body", *m.SetBy); err != nil {
		return err
	}

	return nil
}

func (m *StatInfo) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

var statInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INIT", "TIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statInfoTypeStatusPropEnum = append(statInfoTypeStatusPropEnum, v)
	}
}

const (

	// StatInfoStatusINIT captures enum value "INIT"
	StatInfoStatusINIT string = "INIT"

	// StatInfoStatusTIED captures enum value "TIED"
	StatInfoStatusTIED string = "TIED"
)

// prop value enum
func (m *StatInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StatInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *StatInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

var statInfoTypeVisibilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["SERVERONLY", "SHOWALL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statInfoTypeVisibilityPropEnum = append(statInfoTypeVisibilityPropEnum, v)
	}
}

const (

	// StatInfoVisibilitySERVERONLY captures enum value "SERVERONLY"
	StatInfoVisibilitySERVERONLY string = "SERVERONLY"

	// StatInfoVisibilitySHOWALL captures enum value "SHOWALL"
	StatInfoVisibilitySHOWALL string = "SHOWALL"
)

// prop value enum
func (m *StatInfo) validateVisibilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statInfoTypeVisibilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *StatInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatInfo) UnmarshalBinary(b []byte) error {
	var res StatInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

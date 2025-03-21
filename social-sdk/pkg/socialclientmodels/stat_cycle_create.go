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

// StatCycleCreate Stat cycle create
//
// swagger:model Stat cycle create.
type StatCycleCreate struct {

	// Cycle Type
	// Enum: ['ANNUALLY', 'DAILY', 'MONTHLY', 'SEASONAL', 'WEEKLY']
	// Required: true
	CycleType *string `json:"cycleType"`

	// description
	Description string `json:"description,omitempty"`

	// end date time
	// Format: date-time
	End *strfmt.DateTime `json:"end,omitempty"`

	// cycle id
	ID string `json:"id,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// reset date
	// Format: int32
	ResetDate int32 `json:"resetDate,omitempty"`

	// reset day of week
	// Format: int32
	ResetDay int32 `json:"resetDay,omitempty"`

	// reset month
	// Format: int32
	ResetMonth int32 `json:"resetMonth,omitempty"`

	// resettime
	// Required: true
	ResetTime *string `json:"resetTime"`

	// season period
	// Format: int32
	SeasonPeriod int32 `json:"seasonPeriod,omitempty"`

	// start date time
	// Required: true
	// Format: date-time
	Start strfmt.DateTime `json:"start"`
}

// Validate validates this Stat cycle create
func (m *StatCycleCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCycleType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResetTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStart(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var statCycleCreateTypeCycleTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ANNUALLY", "DAILY", "MONTHLY", "SEASONAL", "WEEKLY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statCycleCreateTypeCycleTypePropEnum = append(statCycleCreateTypeCycleTypePropEnum, v)
	}
}

const (

	// StatCycleCreateCycleTypeANNUALLY captures enum value "ANNUALLY"
	StatCycleCreateCycleTypeANNUALLY string = "ANNUALLY"

	// StatCycleCreateCycleTypeDAILY captures enum value "DAILY"
	StatCycleCreateCycleTypeDAILY string = "DAILY"

	// StatCycleCreateCycleTypeMONTHLY captures enum value "MONTHLY"
	StatCycleCreateCycleTypeMONTHLY string = "MONTHLY"

	// StatCycleCreateCycleTypeSEASONAL captures enum value "SEASONAL"
	StatCycleCreateCycleTypeSEASONAL string = "SEASONAL"

	// StatCycleCreateCycleTypeWEEKLY captures enum value "WEEKLY"
	StatCycleCreateCycleTypeWEEKLY string = "WEEKLY"
)

// prop value enum
func (m *StatCycleCreate) validateCycleTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statCycleCreateTypeCycleTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StatCycleCreate) validateCycleType(formats strfmt.Registry) error {

	if err := validate.Required("cycleType", "body", m.CycleType); err != nil {
		return err
	}

	// value enum
	if err := m.validateCycleTypeEnum("cycleType", "body", *m.CycleType); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleCreate) validateResetTime(formats strfmt.Registry) error {

	if err := validate.Required("resetTime", "body", m.ResetTime); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleCreate) validateStart(formats strfmt.Registry) error {

	if err := validate.Required("start", "body", strfmt.DateTime(m.Start)); err != nil {
		return err
	}

	if err := validate.FormatOf("start", "body", "date-time", m.Start.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StatCycleCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatCycleCreate) UnmarshalBinary(b []byte) error {
	var res StatCycleCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

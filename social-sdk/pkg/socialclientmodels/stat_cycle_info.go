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

// StatCycleInfo Stat cycle info
//
// swagger:model Stat cycle info.
type StatCycleInfo struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// currentversion
	// Required: true
	// Format: int32
	CurrentVersion *int32 `json:"currentVersion"`

	// cycletype
	// Enum: ['ANNUALLY', 'DAILY', 'MONTHLY', 'SEASONAL', 'WEEKLY']
	// Required: true
	CycleType *string `json:"cycleType"`

	// description
	Description string `json:"description,omitempty"`

	// end
	// Format: date-time
	End *strfmt.DateTime `json:"end,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// nextreset
	// Format: date-time
	NextReset *strfmt.DateTime `json:"nextReset,omitempty"`

	// resetdate
	// Format: int32
	ResetDate int32 `json:"resetDate,omitempty"`

	// resetday
	// Format: int32
	ResetDay int32 `json:"resetDay,omitempty"`

	// resetmonth
	// Format: int32
	ResetMonth int32 `json:"resetMonth,omitempty"`

	// resettime
	// Required: true
	ResetTime *string `json:"resetTime"`

	// seasonperiod
	// Format: int32
	SeasonPeriod int32 `json:"seasonPeriod,omitempty"`

	// start
	// Required: true
	// Format: date-time
	Start strfmt.DateTime `json:"start"`

	// status
	// Enum: ['ACTIVE', 'INIT', 'STOPPED']
	// Required: true
	Status *string `json:"status"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Stat cycle info
func (m *StatCycleInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCycleType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResetTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStart(formats); err != nil {
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

func (m *StatCycleInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleInfo) validateCurrentVersion(formats strfmt.Registry) error {

	if err := validate.Required("currentVersion", "body", m.CurrentVersion); err != nil {
		return err
	}

	return nil
}

var statCycleInfoTypeCycleTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ANNUALLY", "DAILY", "MONTHLY", "SEASONAL", "WEEKLY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statCycleInfoTypeCycleTypePropEnum = append(statCycleInfoTypeCycleTypePropEnum, v)
	}
}

const (

	// StatCycleInfoCycleTypeANNUALLY captures enum value "ANNUALLY"
	StatCycleInfoCycleTypeANNUALLY string = "ANNUALLY"

	// StatCycleInfoCycleTypeDAILY captures enum value "DAILY"
	StatCycleInfoCycleTypeDAILY string = "DAILY"

	// StatCycleInfoCycleTypeMONTHLY captures enum value "MONTHLY"
	StatCycleInfoCycleTypeMONTHLY string = "MONTHLY"

	// StatCycleInfoCycleTypeSEASONAL captures enum value "SEASONAL"
	StatCycleInfoCycleTypeSEASONAL string = "SEASONAL"

	// StatCycleInfoCycleTypeWEEKLY captures enum value "WEEKLY"
	StatCycleInfoCycleTypeWEEKLY string = "WEEKLY"
)

// prop value enum
func (m *StatCycleInfo) validateCycleTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statCycleInfoTypeCycleTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StatCycleInfo) validateCycleType(formats strfmt.Registry) error {

	if err := validate.Required("cycleType", "body", m.CycleType); err != nil {
		return err
	}

	// value enum
	if err := m.validateCycleTypeEnum("cycleType", "body", *m.CycleType); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleInfo) validateResetTime(formats strfmt.Registry) error {

	if err := validate.Required("resetTime", "body", m.ResetTime); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleInfo) validateStart(formats strfmt.Registry) error {

	if err := validate.Required("start", "body", strfmt.DateTime(m.Start)); err != nil {
		return err
	}

	if err := validate.FormatOf("start", "body", "date-time", m.Start.String(), formats); err != nil {
		return err
	}

	return nil
}

var statCycleInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INIT", "STOPPED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statCycleInfoTypeStatusPropEnum = append(statCycleInfoTypeStatusPropEnum, v)
	}
}

const (

	// StatCycleInfoStatusACTIVE captures enum value "ACTIVE"
	StatCycleInfoStatusACTIVE string = "ACTIVE"

	// StatCycleInfoStatusINIT captures enum value "INIT"
	StatCycleInfoStatusINIT string = "INIT"

	// StatCycleInfoStatusSTOPPED captures enum value "STOPPED"
	StatCycleInfoStatusSTOPPED string = "STOPPED"
)

// prop value enum
func (m *StatCycleInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statCycleInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StatCycleInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *StatCycleInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StatCycleInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatCycleInfo) UnmarshalBinary(b []byte) error {
	var res StatCycleInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

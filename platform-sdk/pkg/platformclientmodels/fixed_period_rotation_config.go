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

// FixedPeriodRotationConfig Fixed period rotation config
//
// swagger:model Fixed period rotation config.
type FixedPeriodRotationConfig struct {

	// backfill type: NONE/CUSTOM, default is NONE
	// Enum: ['CUSTOM', 'NONE']
	BackfillType string `json:"backfillType,omitempty"`

	// duration: rotation duration, unit is minutes, min duration is 1
	// Format: int32
	Duration int32 `json:"duration,omitempty"`

	// returned item count, min is 1, default is 1
	// Format: int32
	ItemCount int32 `json:"itemCount,omitempty"`

	// item rotation rule: SEQUENCE/LOOP. default is SEQUENCE
	// Enum: ['LOOP', 'SEQUENCE']
	Rule string `json:"rule,omitempty"`
}

// Validate validates this Fixed period rotation config
func (m *FixedPeriodRotationConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var fixedPeriodRotationConfigTypeBackfillTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CUSTOM", "NONE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fixedPeriodRotationConfigTypeBackfillTypePropEnum = append(fixedPeriodRotationConfigTypeBackfillTypePropEnum, v)
	}
}

const (

	// FixedPeriodRotationConfigBackfillTypeCUSTOM captures enum value "CUSTOM"
	FixedPeriodRotationConfigBackfillTypeCUSTOM string = "CUSTOM"

	// FixedPeriodRotationConfigBackfillTypeNONE captures enum value "NONE"
	FixedPeriodRotationConfigBackfillTypeNONE string = "NONE"
)

// prop value enum
func (m *FixedPeriodRotationConfig) validateBackfillTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fixedPeriodRotationConfigTypeBackfillTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var fixedPeriodRotationConfigTypeRulePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LOOP", "SEQUENCE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fixedPeriodRotationConfigTypeRulePropEnum = append(fixedPeriodRotationConfigTypeRulePropEnum, v)
	}
}

const (

	// FixedPeriodRotationConfigRuleLOOP captures enum value "LOOP"
	FixedPeriodRotationConfigRuleLOOP string = "LOOP"

	// FixedPeriodRotationConfigRuleSEQUENCE captures enum value "SEQUENCE"
	FixedPeriodRotationConfigRuleSEQUENCE string = "SEQUENCE"
)

// prop value enum
func (m *FixedPeriodRotationConfig) validateRuleEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fixedPeriodRotationConfigTypeRulePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FixedPeriodRotationConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FixedPeriodRotationConfig) UnmarshalBinary(b []byte) error {
	var res FixedPeriodRotationConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

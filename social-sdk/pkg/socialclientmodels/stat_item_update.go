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

// StatItemUpdate Stat item update
//
// swagger:model Stat item update.
type StatItemUpdate struct {

	// Additional data to be published in event payload
	AdditionalData interface{} `json:"additionalData,omitempty"`

	// updatestrategy
	// Enum: ['INCREMENT', 'MAX', 'MIN', 'OVERRIDE']
	// Required: true
	UpdateStrategy *string `json:"updateStrategy"`

	// value
	// Required: true
	// Format: double
	Value *float64 `json:"value"`
}

// Validate validates this Stat item update
func (m *StatItemUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUpdateStrategy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var statItemUpdateTypeUpdateStrategyPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INCREMENT", "MAX", "MIN", "OVERRIDE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statItemUpdateTypeUpdateStrategyPropEnum = append(statItemUpdateTypeUpdateStrategyPropEnum, v)
	}
}

const (

	// StatItemUpdateUpdateStrategyINCREMENT captures enum value "INCREMENT"
	StatItemUpdateUpdateStrategyINCREMENT string = "INCREMENT"

	// StatItemUpdateUpdateStrategyMAX captures enum value "MAX"
	StatItemUpdateUpdateStrategyMAX string = "MAX"

	// StatItemUpdateUpdateStrategyMIN captures enum value "MIN"
	StatItemUpdateUpdateStrategyMIN string = "MIN"

	// StatItemUpdateUpdateStrategyOVERRIDE captures enum value "OVERRIDE"
	StatItemUpdateUpdateStrategyOVERRIDE string = "OVERRIDE"
)

// prop value enum
func (m *StatItemUpdate) validateUpdateStrategyEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statItemUpdateTypeUpdateStrategyPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *StatItemUpdate) validateUpdateStrategy(formats strfmt.Registry) error {

	if err := validate.Required("updateStrategy", "body", m.UpdateStrategy); err != nil {
		return err
	}

	// value enum
	if err := m.validateUpdateStrategyEnum("updateStrategy", "body", *m.UpdateStrategy); err != nil {
		return err
	}

	return nil
}

func (m *StatItemUpdate) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StatItemUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatItemUpdate) UnmarshalBinary(b []byte) error {
	var res StatItemUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

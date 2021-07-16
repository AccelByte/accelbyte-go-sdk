// Code generated by go-swagger; DO NOT EDIT.

package socialclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// StatItemUpdate stat item update
//
// swagger:model StatItemUpdate
type StatItemUpdate struct {

	// Additional data to be published in event payload
	AdditionalData map[string]interface{} `json:"additionalData,omitempty"`

	// update strategy
	// Required: true
	// Enum: [OVERRIDE INCREMENT MAX MIN]
	UpdateStrategy *string `json:"updateStrategy"`

	// value
	// Required: true
	Value *float64 `json:"value"`
}

// Validate validates this stat item update
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
	if err := json.Unmarshal([]byte(`["OVERRIDE","INCREMENT","MAX","MIN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statItemUpdateTypeUpdateStrategyPropEnum = append(statItemUpdateTypeUpdateStrategyPropEnum, v)
	}
}

const (

	// StatItemUpdateUpdateStrategyOVERRIDE captures enum value "OVERRIDE"
	StatItemUpdateUpdateStrategyOVERRIDE string = "OVERRIDE"

	// StatItemUpdateUpdateStrategyINCREMENT captures enum value "INCREMENT"
	StatItemUpdateUpdateStrategyINCREMENT string = "INCREMENT"

	// StatItemUpdateUpdateStrategyMAX captures enum value "MAX"
	StatItemUpdateUpdateStrategyMAX string = "MAX"

	// StatItemUpdateUpdateStrategyMIN captures enum value "MIN"
	StatItemUpdateUpdateStrategyMIN string = "MIN"
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

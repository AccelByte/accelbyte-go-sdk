// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRuleResponseV1 Models rule response V1
//
// swagger:model Models rule response V1.
type ModelsRuleResponseV1 struct {

	// allowedaction
	// Enum: ['createGroup', 'joinGroup']
	// Required: true
	AllowedAction *string `json:"allowedAction"`

	// ruledetail
	// Required: true
	RuleDetail []*ModelsRuleInformation `json:"ruleDetail"`
}

// Validate validates this Models rule response V1
func (m *ModelsRuleResponseV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowedAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRuleDetail(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsRuleResponseV1TypeAllowedActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CREATEGROUP", "JOINGROUP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsRuleResponseV1TypeAllowedActionPropEnum = append(modelsRuleResponseV1TypeAllowedActionPropEnum, v)
	}
}

const (

	// ModelsRuleResponseV1AllowedActionCREATEGROUP captures enum value "CREATEGROUP"
	ModelsRuleResponseV1AllowedActionCREATEGROUP string = "CREATEGROUP"

	// ModelsRuleResponseV1AllowedActionJOINGROUP captures enum value "JOINGROUP"
	ModelsRuleResponseV1AllowedActionJOINGROUP string = "JOINGROUP"
)

// prop value enum
func (m *ModelsRuleResponseV1) validateAllowedActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsRuleResponseV1TypeAllowedActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsRuleResponseV1) validateAllowedAction(formats strfmt.Registry) error {

	if err := validate.Required("allowedAction", "body", m.AllowedAction); err != nil {
		return err
	}

	// value enum
	if err := m.validateAllowedActionEnum("allowedAction", "body", *m.AllowedAction); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleResponseV1) validateRuleDetail(formats strfmt.Registry) error {

	if err := validate.Required("ruleDetail", "body", m.RuleDetail); err != nil {
		return err
	}

	for i := 0; i < len(m.RuleDetail); i++ {
		if swag.IsZero(m.RuleDetail[i]) { // not required
			continue
		}

		if m.RuleDetail[i] != nil {
			if err := m.RuleDetail[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("ruleDetail" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRuleResponseV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRuleResponseV1) UnmarshalBinary(b []byte) error {
	var res ModelsRuleResponseV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

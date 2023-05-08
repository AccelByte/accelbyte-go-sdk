// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRule Models rule
//
// swagger:model Models rule.
type ModelsRule struct {

	// allowedaction
	// Required: true
	AllowedAction *string `json:"allowedAction"`

	// ruledetail
	// Required: true
	RuleDetail []*ModelsRuleInformation `json:"ruleDetail"`
}

// Validate validates this Models rule
func (m *ModelsRule) Validate(formats strfmt.Registry) error {
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

func (m *ModelsRule) validateAllowedAction(formats strfmt.Registry) error {

	if err := validate.Required("allowedAction", "body", m.AllowedAction); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRule) validateRuleDetail(formats strfmt.Registry) error {

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
func (m *ModelsRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRule) UnmarshalBinary(b []byte) error {
	var res ModelsRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

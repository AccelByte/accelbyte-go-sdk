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

// ModelsGroupRuleResponseV1 Models group rule response V1
//
// swagger:model Models group rule response V1.
type ModelsGroupRuleResponseV1 struct {

	// groupcustomrule
	// Required: true
	GroupCustomRule ModelsGroupRuleResponseV1GroupCustomRule `json:"groupCustomRule"`

	// grouppredefinedrules
	// Required: true
	GroupPredefinedRules []*ModelsRuleResponseV1 `json:"groupPredefinedRules"`
}

// Validate validates this Models group rule response V1
func (m *ModelsGroupRuleResponseV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupCustomRule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupPredefinedRules(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGroupRuleResponseV1) validateGroupCustomRule(formats strfmt.Registry) error {

	if err := validate.Required("groupCustomRule", "body", m.GroupCustomRule); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGroupRuleResponseV1) validateGroupPredefinedRules(formats strfmt.Registry) error {

	if err := validate.Required("groupPredefinedRules", "body", m.GroupPredefinedRules); err != nil {
		return err
	}

	for i := 0; i < len(m.GroupPredefinedRules); i++ {
		if swag.IsZero(m.GroupPredefinedRules[i]) { // not required
			continue
		}

		if m.GroupPredefinedRules[i] != nil {
			if err := m.GroupPredefinedRules[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("groupPredefinedRules" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGroupRuleResponseV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGroupRuleResponseV1) UnmarshalBinary(b []byte) error {
	var res ModelsGroupRuleResponseV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

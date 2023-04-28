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

// ModelsUpdateGroupPredefinedRuleRequestV1 Models update group predefined rule request V1
//
// swagger:model Models update group predefined rule request V1.
type ModelsUpdateGroupPredefinedRuleRequestV1 struct {

	// ruledetail
	// Required: true
	RuleDetail []*ModelsRuleInformation `json:"ruleDetail"`
}

// Validate validates this Models update group predefined rule request V1
func (m *ModelsUpdateGroupPredefinedRuleRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRuleDetail(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateGroupPredefinedRuleRequestV1) validateRuleDetail(formats strfmt.Registry) error {

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
func (m *ModelsUpdateGroupPredefinedRuleRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateGroupPredefinedRuleRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateGroupPredefinedRuleRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAllianceRuleV1 Models alliance rule V1
//
// swagger:model Models alliance rule V1.
type ModelsAllianceRuleV1 struct {

	// combination
	// Required: true
	Combination *ModelsCombination `json:"combination"`

	// maxnumber
	// Required: true
	// Format: int32
	MaxNumber *int32 `json:"maxNumber"`

	// minnumber
	// Required: true
	// Format: int32
	MinNumber *int32 `json:"minNumber"`

	// playermaxnumber
	// Required: true
	// Format: int32
	PlayerMaxNumber *int32 `json:"playerMaxNumber"`

	// playerminnumber
	// Required: true
	// Format: int32
	PlayerMinNumber *int32 `json:"playerMinNumber"`
}

// Validate validates this Models alliance rule V1
func (m *ModelsAllianceRuleV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCombination(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayerMaxNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayerMinNumber(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAllianceRuleV1) validateCombination(formats strfmt.Registry) error {

	if err := validate.Required("combination", "body", m.Combination); err != nil {
		return err
	}

	if m.Combination != nil {
		if err := m.Combination.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("combination")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsAllianceRuleV1) validateMaxNumber(formats strfmt.Registry) error {

	if err := validate.Required("maxNumber", "body", m.MaxNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRuleV1) validateMinNumber(formats strfmt.Registry) error {

	if err := validate.Required("minNumber", "body", m.MinNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRuleV1) validatePlayerMaxNumber(formats strfmt.Registry) error {

	if err := validate.Required("playerMaxNumber", "body", m.PlayerMaxNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRuleV1) validatePlayerMinNumber(formats strfmt.Registry) error {

	if err := validate.Required("playerMinNumber", "body", m.PlayerMinNumber); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAllianceRuleV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAllianceRuleV1) UnmarshalBinary(b []byte) error {
	var res ModelsAllianceRuleV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

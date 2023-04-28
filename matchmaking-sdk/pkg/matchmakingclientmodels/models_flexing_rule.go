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

// ModelsFlexingRule Models flexing rule
//
// swagger:model Models flexing rule.
type ModelsFlexingRule struct {

	// attribute
	// Required: true
	Attribute string `json:"attribute"`

	// criteria
	// Required: true
	Criteria string `json:"criteria"`

	// duration
	// Required: true
	// Format: int64
	Duration *int64 `json:"duration"`

	// reference
	// Required: true
	// Format: double
	Reference float64 `json:"reference"`
}

// Validate validates this Models flexing rule
func (m *ModelsFlexingRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAttribute(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCriteria(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDuration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReference(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsFlexingRule) validateAttribute(formats strfmt.Registry) error {

	if err := validate.Required("attribute", "body", m.Attribute); err != nil {
		return err
	}

	return nil
}

func (m *ModelsFlexingRule) validateCriteria(formats strfmt.Registry) error {

	if err := validate.Required("criteria", "body", m.Criteria); err != nil {
		return err
	}

	return nil
}

func (m *ModelsFlexingRule) validateDuration(formats strfmt.Registry) error {

	if err := validate.Required("duration", "body", m.Duration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsFlexingRule) validateReference(formats strfmt.Registry) error {

	if err := validate.Required("reference", "body", m.Reference); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsFlexingRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsFlexingRule) UnmarshalBinary(b []byte) error {
	var res ModelsFlexingRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

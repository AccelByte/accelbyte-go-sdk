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

// ModelsSelectionRule Models selection rule
//
// swagger:model Models selection rule.
type ModelsSelectionRule struct {

	// selection
	// Required: true
	Selection *string `json:"selection"`

	// threshold
	// Required: true
	// Format: int64
	Threshold *int64 `json:"threshold"`
}

// Validate validates this Models selection rule
func (m *ModelsSelectionRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSelection(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateThreshold(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSelectionRule) validateSelection(formats strfmt.Registry) error {

	if err := validate.Required("selection", "body", m.Selection); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSelectionRule) validateThreshold(formats strfmt.Registry) error {

	if err := validate.Required("threshold", "body", m.Threshold); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSelectionRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSelectionRule) UnmarshalBinary(b []byte) error {
	var res ModelsSelectionRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

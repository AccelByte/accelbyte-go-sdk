// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsProfanityRule Models profanity rule
//
// swagger:model Models profanity rule.
type ModelsProfanityRule struct {

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// rule
	// Required: true
	Rule *string `json:"Rule"`
}

// Validate validates this Models profanity rule
func (m *ModelsProfanityRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRule(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsProfanityRule) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsProfanityRule) validateRule(formats strfmt.Registry) error {

	if err := validate.Required("Rule", "body", m.Rule); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsProfanityRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsProfanityRule) UnmarshalBinary(b []byte) error {
	var res ModelsProfanityRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDictionaryWordChanges Models dictionary word changes
//
// swagger:model Models dictionary word changes.
type ModelsDictionaryWordChanges struct {

	// added
	// Required: true
	Added []string `json:"added"`

	// failed
	// Required: true
	Failed []string `json:"failed"`

	// ignored
	// Required: true
	Ignored []string `json:"ignored"`

	// replaced
	// Required: true
	Replaced []string `json:"replaced"`

	// unchanged
	// Required: true
	Unchanged []string `json:"unchanged"`
}

// Validate validates this Models dictionary word changes
func (m *ModelsDictionaryWordChanges) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdded(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFailed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIgnored(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReplaced(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnchanged(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDictionaryWordChanges) validateAdded(formats strfmt.Registry) error {

	if err := validate.Required("added", "body", m.Added); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionaryWordChanges) validateFailed(formats strfmt.Registry) error {

	if err := validate.Required("failed", "body", m.Failed); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionaryWordChanges) validateIgnored(formats strfmt.Registry) error {

	if err := validate.Required("ignored", "body", m.Ignored); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionaryWordChanges) validateReplaced(formats strfmt.Registry) error {

	if err := validate.Required("replaced", "body", m.Replaced); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionaryWordChanges) validateUnchanged(formats strfmt.Registry) error {

	if err := validate.Required("unchanged", "body", m.Unchanged); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDictionaryWordChanges) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDictionaryWordChanges) UnmarshalBinary(b []byte) error {
	var res ModelsDictionaryWordChanges
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

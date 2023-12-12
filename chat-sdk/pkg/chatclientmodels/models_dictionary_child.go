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

// ModelsDictionaryChild Models dictionary child
//
// swagger:model Models dictionary child.
type ModelsDictionaryChild struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// word
	// Required: true
	Word *string `json:"word"`
}

// Validate validates this Models dictionary child
func (m *ModelsDictionaryChild) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWord(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDictionaryChild) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionaryChild) validateWord(formats strfmt.Registry) error {

	if err := validate.Required("word", "body", m.Word); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDictionaryChild) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDictionaryChild) UnmarshalBinary(b []byte) error {
	var res ModelsDictionaryChild
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

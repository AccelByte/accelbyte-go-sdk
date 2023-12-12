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

// ModelsDictionaryInsertRequest Models dictionary insert request
//
// swagger:model Models dictionary insert request.
type ModelsDictionaryInsertRequest struct {

	// falsenegative
	// Required: true
	FalseNegative []string `json:"falseNegative"`

	// falsepositive
	// Required: true
	FalsePositive []string `json:"falsePositive"`

	// word
	// Required: true
	Word *string `json:"word"`

	// wordtype
	// Required: true
	WordType *string `json:"wordType"`
}

// Validate validates this Models dictionary insert request
func (m *ModelsDictionaryInsertRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFalseNegative(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFalsePositive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWordType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDictionaryInsertRequest) validateFalseNegative(formats strfmt.Registry) error {

	if err := validate.Required("falseNegative", "body", m.FalseNegative); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionaryInsertRequest) validateFalsePositive(formats strfmt.Registry) error {

	if err := validate.Required("falsePositive", "body", m.FalsePositive); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionaryInsertRequest) validateWord(formats strfmt.Registry) error {

	if err := validate.Required("word", "body", m.Word); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionaryInsertRequest) validateWordType(formats strfmt.Registry) error {

	if err := validate.Required("wordType", "body", m.WordType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDictionaryInsertRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDictionaryInsertRequest) UnmarshalBinary(b []byte) error {
	var res ModelsDictionaryInsertRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// ModelsDictionary Models dictionary
//
// swagger:model Models dictionary.
type ModelsDictionary struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// parentid
	ParentID string `json:"parentId,omitempty"`

	// word
	// Required: true
	Word *string `json:"word"`

	// wordtype
	// Required: true
	WordType *string `json:"wordType"`
}

// Validate validates this Models dictionary
func (m *ModelsDictionary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ModelsDictionary) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionary) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionary) validateWord(formats strfmt.Registry) error {

	if err := validate.Required("word", "body", m.Word); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDictionary) validateWordType(formats strfmt.Registry) error {

	if err := validate.Required("wordType", "body", m.WordType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDictionary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDictionary) UnmarshalBinary(b []byte) error {
	var res ModelsDictionary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

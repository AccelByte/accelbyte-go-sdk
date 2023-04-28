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

// ModelsProfanityFilter Models profanity filter
//
// swagger:model Models profanity filter.
type ModelsProfanityFilter struct {

	// filter
	// Required: true
	Filter *string `json:"filter"`

	// listname
	// Required: true
	ListName *string `json:"listName"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// note
	// Required: true
	Note *string `json:"note"`
}

// Validate validates this Models profanity filter
func (m *ModelsProfanityFilter) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFilter(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateListName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNote(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsProfanityFilter) validateFilter(formats strfmt.Registry) error {

	if err := validate.Required("filter", "body", m.Filter); err != nil {
		return err
	}

	return nil
}

func (m *ModelsProfanityFilter) validateListName(formats strfmt.Registry) error {

	if err := validate.Required("listName", "body", m.ListName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsProfanityFilter) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsProfanityFilter) validateNote(formats strfmt.Registry) error {

	if err := validate.Required("note", "body", m.Note); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsProfanityFilter) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsProfanityFilter) UnmarshalBinary(b []byte) error {
	var res ModelsProfanityFilter
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

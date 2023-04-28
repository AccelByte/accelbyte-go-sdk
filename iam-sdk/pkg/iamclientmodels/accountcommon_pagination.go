// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountcommonPagination Accountcommon pagination
//
// swagger:model Accountcommon pagination.
type AccountcommonPagination struct {

	// first
	// Required: true
	First *string `json:"First"`

	// last
	// Required: true
	Last *string `json:"Last"`

	// next
	// Required: true
	Next *string `json:"Next"`

	// previous
	// Required: true
	Previous *string `json:"Previous"`
}

// Validate validates this Accountcommon pagination
func (m *AccountcommonPagination) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFirst(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLast(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNext(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrevious(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonPagination) validateFirst(formats strfmt.Registry) error {

	if err := validate.Required("First", "body", m.First); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPagination) validateLast(formats strfmt.Registry) error {

	if err := validate.Required("Last", "body", m.Last); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPagination) validateNext(formats strfmt.Registry) error {

	if err := validate.Required("Next", "body", m.Next); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonPagination) validatePrevious(formats strfmt.Registry) error {

	if err := validate.Required("Previous", "body", m.Previous); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonPagination) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonPagination) UnmarshalBinary(b []byte) error {
	var res AccountcommonPagination
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

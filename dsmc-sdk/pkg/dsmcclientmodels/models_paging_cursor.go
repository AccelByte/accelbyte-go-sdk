// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPagingCursor Models paging cursor
//
// swagger:model Models paging cursor.
type ModelsPagingCursor struct {

	// next
	// Required: true
	Next *string `json:"next"`

	// previous
	// Required: true
	Previous *string `json:"previous"`
}

// Validate validates this Models paging cursor
func (m *ModelsPagingCursor) Validate(formats strfmt.Registry) error {
	var res []error

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

func (m *ModelsPagingCursor) validateNext(formats strfmt.Registry) error {

	if err := validate.Required("next", "body", m.Next); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPagingCursor) validatePrevious(formats strfmt.Registry) error {

	if err := validate.Required("previous", "body", m.Previous); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPagingCursor) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPagingCursor) UnmarshalBinary(b []byte) error {
	var res ModelsPagingCursor
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

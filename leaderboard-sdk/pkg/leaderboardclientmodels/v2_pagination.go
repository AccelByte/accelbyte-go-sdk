// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboardclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// V2Pagination V2 pagination
//
// swagger:model V2 pagination.
type V2Pagination struct {

	// first
	// Required: true
	First *string `json:"first"`

	// last
	// Required: true
	Last *string `json:"last"`

	// next
	// Required: true
	Next *string `json:"next"`

	// previous
	// Required: true
	Previous *string `json:"previous"`
}

// Validate validates this V2 pagination
func (m *V2Pagination) Validate(formats strfmt.Registry) error {
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

func (m *V2Pagination) validateFirst(formats strfmt.Registry) error {

	if err := validate.Required("first", "body", m.First); err != nil {
		return err
	}

	return nil
}

func (m *V2Pagination) validateLast(formats strfmt.Registry) error {

	if err := validate.Required("last", "body", m.Last); err != nil {
		return err
	}

	return nil
}

func (m *V2Pagination) validateNext(formats strfmt.Registry) error {

	if err := validate.Required("next", "body", m.Next); err != nil {
		return err
	}

	return nil
}

func (m *V2Pagination) validatePrevious(formats strfmt.Registry) error {

	if err := validate.Required("previous", "body", m.Previous); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *V2Pagination) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *V2Pagination) UnmarshalBinary(b []byte) error {
	var res V2Pagination
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

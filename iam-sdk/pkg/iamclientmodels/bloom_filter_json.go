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

// BloomFilterJSON Bloom filter JSON
//
// swagger:model Bloom filter JSON.
type BloomFilterJSON struct {

	// bits
	// Required: true
	// Format: uint64
	Bits []uint64 `json:"bits"`

	// k
	// Required: true
	// Format: integer
	K *int64 `json:"k"`

	// m
	// Required: true
	// Format: integer
	M *int64 `json:"m"`
}

// Validate validates this Bloom filter JSON
func (m *BloomFilterJSON) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBits(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateK(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateM(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *BloomFilterJSON) validateBits(formats strfmt.Registry) error {

	if err := validate.Required("bits", "body", m.Bits); err != nil {
		return err
	}

	return nil
}

func (m *BloomFilterJSON) validateK(formats strfmt.Registry) error {

	if err := validate.Required("k", "body", m.K); err != nil {
		return err
	}

	return nil
}

func (m *BloomFilterJSON) validateM(formats strfmt.Registry) error {

	if err := validate.Required("m", "body", m.M); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BloomFilterJSON) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BloomFilterJSON) UnmarshalBinary(b []byte) error {
	var res BloomFilterJSON
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

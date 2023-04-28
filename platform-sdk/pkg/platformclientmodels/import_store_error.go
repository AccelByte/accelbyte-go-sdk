// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ImportStoreError Import store error
//
// swagger:model Import store error.
type ImportStoreError struct {

	// errors
	Errors []*ImportErrorDetails `json:"errors,omitempty"`

	// item info
	Item *ImportStoreItemInfo `json:"item,omitempty"`

	// type
	// Enum: ['ITEM']
	Type string `json:"type,omitempty"`
}

// Validate validates this Import store error
func (m *ImportStoreError) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var importStoreErrorTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		importStoreErrorTypeTypePropEnum = append(importStoreErrorTypeTypePropEnum, v)
	}
}

const (

	// ImportStoreErrorTypeITEM captures enum value "ITEM"
	ImportStoreErrorTypeITEM string = "ITEM"
)

// prop value enum
func (m *ImportStoreError) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, importStoreErrorTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ImportStoreError) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ImportStoreError) UnmarshalBinary(b []byte) error {
	var res ImportStoreError
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

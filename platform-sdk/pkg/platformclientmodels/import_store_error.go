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

	// app info
	App *ImportStoreAppInfo `json:"app,omitempty"`

	// category info
	Category *ImportStoreCategoryInfo `json:"category,omitempty"`

	// errors
	Errors []*ImportErrorDetails `json:"errors,omitempty"`

	// item info
	Item *ImportStoreItemInfo `json:"item,omitempty"`

	// section info
	Section *ImportStoreSectionInfo `json:"section,omitempty"`

	// type
	// Enum: ['APP', 'CATEGORY', 'ITEM', 'SECTION', 'STORE', 'VIEW']
	Type string `json:"type,omitempty"`

	// view info
	View *ImportStoreViewInfo `json:"view,omitempty"`
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
	if err := json.Unmarshal([]byte(`["APP", "CATEGORY", "ITEM", "SECTION", "STORE", "VIEW"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		importStoreErrorTypeTypePropEnum = append(importStoreErrorTypeTypePropEnum, v)
	}
}

const (

	// ImportStoreErrorTypeAPP captures enum value "APP"
	ImportStoreErrorTypeAPP string = "APP"

	// ImportStoreErrorTypeCATEGORY captures enum value "CATEGORY"
	ImportStoreErrorTypeCATEGORY string = "CATEGORY"

	// ImportStoreErrorTypeITEM captures enum value "ITEM"
	ImportStoreErrorTypeITEM string = "ITEM"

	// ImportStoreErrorTypeSECTION captures enum value "SECTION"
	ImportStoreErrorTypeSECTION string = "SECTION"

	// ImportStoreErrorTypeSTORE captures enum value "STORE"
	ImportStoreErrorTypeSTORE string = "STORE"

	// ImportStoreErrorTypeVIEW captures enum value "VIEW"
	ImportStoreErrorTypeVIEW string = "VIEW"
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

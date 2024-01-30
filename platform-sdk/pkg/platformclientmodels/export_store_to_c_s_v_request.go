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

// ExportStoreToCSVRequest Export store to CSV request
//
// swagger:model Export store to CSV request.
type ExportStoreToCSVRequest struct {

	// catalog type
	// Enum: ['APP', 'CATEGORY', 'ITEM', 'SECTION', 'VIEW']
	// Required: true
	CatalogType *string `json:"catalogType"`

	// fields to be included, return all fields if empty
	FieldsToBeIncluded []string `json:"fieldsToBeIncluded,omitempty"`

	// ids according to catalog type to be exported, return all result of a catalogType if empty
	IdsToBeExported []string `json:"idsToBeExported,omitempty"`

	// target store id to be exported, default using published store Id
	StoreID string `json:"storeId,omitempty"`
}

// Validate validates this Export store to CSV request
func (m *ExportStoreToCSVRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCatalogType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var exportStoreToCSVRequestTypeCatalogTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CATEGORY", "ITEM", "SECTION", "VIEW"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		exportStoreToCSVRequestTypeCatalogTypePropEnum = append(exportStoreToCSVRequestTypeCatalogTypePropEnum, v)
	}
}

const (

	// ExportStoreToCSVRequestCatalogTypeAPP captures enum value "APP"
	ExportStoreToCSVRequestCatalogTypeAPP string = "APP"

	// ExportStoreToCSVRequestCatalogTypeCATEGORY captures enum value "CATEGORY"
	ExportStoreToCSVRequestCatalogTypeCATEGORY string = "CATEGORY"

	// ExportStoreToCSVRequestCatalogTypeITEM captures enum value "ITEM"
	ExportStoreToCSVRequestCatalogTypeITEM string = "ITEM"

	// ExportStoreToCSVRequestCatalogTypeSECTION captures enum value "SECTION"
	ExportStoreToCSVRequestCatalogTypeSECTION string = "SECTION"

	// ExportStoreToCSVRequestCatalogTypeVIEW captures enum value "VIEW"
	ExportStoreToCSVRequestCatalogTypeVIEW string = "VIEW"
)

// prop value enum
func (m *ExportStoreToCSVRequest) validateCatalogTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, exportStoreToCSVRequestTypeCatalogTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ExportStoreToCSVRequest) validateCatalogType(formats strfmt.Registry) error {

	if err := validate.Required("catalogType", "body", m.CatalogType); err != nil {
		return err
	}

	// value enum
	if err := m.validateCatalogTypeEnum("catalogType", "body", *m.CatalogType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ExportStoreToCSVRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ExportStoreToCSVRequest) UnmarshalBinary(b []byte) error {
	var res ExportStoreToCSVRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

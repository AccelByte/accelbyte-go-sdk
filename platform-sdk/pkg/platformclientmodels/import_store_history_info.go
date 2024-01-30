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

// ImportStoreHistoryInfo Import store history info
//
// swagger:model Import store history info.
type ImportStoreHistoryInfo struct {

	// created At
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// a list of errors if failed
	Errors []*ImportStoreError `json:"errors,omitempty"`

	// history id
	// Required: true
	ID *string `json:"id"`

	// import file format
	// Enum: ['CSV', 'JSON']
	// Required: true
	ImportFileFormat *string `json:"importFileFormat"`

	// who create this history
	// Required: true
	InitiatedBy *string `json:"initiatedBy"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// optional note
	Note string `json:"note,omitempty"`

	// store id
	// Required: true
	StoreID *string `json:"storeId"`

	// whether the request is success
	// Required: true
	Success *bool `json:"success"`
}

// Validate validates this Import store history info
func (m *ImportStoreHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImportFileFormat(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInitiatedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStoreID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ImportStoreHistoryInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ImportStoreHistoryInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

var importStoreHistoryInfoTypeImportFileFormatPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CSV", "JSON"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		importStoreHistoryInfoTypeImportFileFormatPropEnum = append(importStoreHistoryInfoTypeImportFileFormatPropEnum, v)
	}
}

const (

	// ImportStoreHistoryInfoImportFileFormatCSV captures enum value "CSV"
	ImportStoreHistoryInfoImportFileFormatCSV string = "CSV"

	// ImportStoreHistoryInfoImportFileFormatJSON captures enum value "JSON"
	ImportStoreHistoryInfoImportFileFormatJSON string = "JSON"
)

// prop value enum
func (m *ImportStoreHistoryInfo) validateImportFileFormatEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, importStoreHistoryInfoTypeImportFileFormatPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ImportStoreHistoryInfo) validateImportFileFormat(formats strfmt.Registry) error {

	if err := validate.Required("importFileFormat", "body", m.ImportFileFormat); err != nil {
		return err
	}

	// value enum
	if err := m.validateImportFileFormatEnum("importFileFormat", "body", *m.ImportFileFormat); err != nil {
		return err
	}

	return nil
}

func (m *ImportStoreHistoryInfo) validateInitiatedBy(formats strfmt.Registry) error {

	if err := validate.Required("initiatedBy", "body", m.InitiatedBy); err != nil {
		return err
	}

	return nil
}

func (m *ImportStoreHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ImportStoreHistoryInfo) validateStoreID(formats strfmt.Registry) error {

	if err := validate.Required("storeId", "body", m.StoreID); err != nil {
		return err
	}

	return nil
}

func (m *ImportStoreHistoryInfo) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ImportStoreHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ImportStoreHistoryInfo) UnmarshalBinary(b []byte) error {
	var res ImportStoreHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

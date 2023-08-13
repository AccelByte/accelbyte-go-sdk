// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGameBinaryRecordCreate Models game binary record create
//
// swagger:model Models game binary record create.
type ModelsGameBinaryRecordCreate struct {

	// file_type
	// Required: true
	FileType *string `json:"file_type"`

	// key
	// Required: true
	Key *string `json:"key"`

	// set_by
	// Required: true
	SetBy *string `json:"set_by"`
}

// Validate validates this Models game binary record create
func (m *ModelsGameBinaryRecordCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFileType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSetBy(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGameBinaryRecordCreate) validateFileType(formats strfmt.Registry) error {

	if err := validate.Required("file_type", "body", m.FileType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameBinaryRecordCreate) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameBinaryRecordCreate) validateSetBy(formats strfmt.Registry) error {

	if err := validate.Required("set_by", "body", m.SetBy); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGameBinaryRecordCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameBinaryRecordCreate) UnmarshalBinary(b []byte) error {
	var res ModelsGameBinaryRecordCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

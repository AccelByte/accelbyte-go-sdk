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

// ModelsPublicGameBinaryRecordCreate Models public game binary record create
//
// swagger:model Models public game binary record create.
type ModelsPublicGameBinaryRecordCreate struct {

	// file_type
	// Required: true
	FileType *string `json:"file_type"`

	// key
	// Required: true
	Key *string `json:"key"`
}

// Validate validates this Models public game binary record create
func (m *ModelsPublicGameBinaryRecordCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFileType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPublicGameBinaryRecordCreate) validateFileType(formats strfmt.Registry) error {

	if err := validate.Required("file_type", "body", m.FileType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicGameBinaryRecordCreate) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPublicGameBinaryRecordCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPublicGameBinaryRecordCreate) UnmarshalBinary(b []byte) error {
	var res ModelsPublicGameBinaryRecordCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

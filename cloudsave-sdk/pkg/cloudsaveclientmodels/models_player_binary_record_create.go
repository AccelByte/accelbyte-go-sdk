// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPlayerBinaryRecordCreate Models player binary record create
//
// swagger:model Models player binary record create.
type ModelsPlayerBinaryRecordCreate struct {

	// File type of the binary record
	// Required: true
	FileType *string `json:"file_type"`

	// Indicate whether the player record is a public record or not
	IsPublic bool `json:"is_public"`

	// Player binary record identifier
	// Required: true
	Key *string `json:"key"`

	// Indicate which party that could modify the record
	// Enum: ['CLIENT', 'SERVER']
	// Required: true
	SetBy *string `json:"set_by"`
}

// Validate validates this Models player binary record create
func (m *ModelsPlayerBinaryRecordCreate) Validate(formats strfmt.Registry) error {
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

func (m *ModelsPlayerBinaryRecordCreate) validateFileType(formats strfmt.Registry) error {

	if err := validate.Required("file_type", "body", m.FileType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerBinaryRecordCreate) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

var modelsPlayerBinaryRecordCreateTypeSetByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsPlayerBinaryRecordCreateTypeSetByPropEnum = append(modelsPlayerBinaryRecordCreateTypeSetByPropEnum, v)
	}
}

const (

	// ModelsPlayerBinaryRecordCreateSetByCLIENT captures enum value "CLIENT"
	ModelsPlayerBinaryRecordCreateSetByCLIENT string = "CLIENT"

	// ModelsPlayerBinaryRecordCreateSetBySERVER captures enum value "SERVER"
	ModelsPlayerBinaryRecordCreateSetBySERVER string = "SERVER"
)

// prop value enum
func (m *ModelsPlayerBinaryRecordCreate) validateSetByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsPlayerBinaryRecordCreateTypeSetByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsPlayerBinaryRecordCreate) validateSetBy(formats strfmt.Registry) error {

	if err := validate.Required("set_by", "body", m.SetBy); err != nil {
		return err
	}

	// value enum
	if err := m.validateSetByEnum("set_by", "body", *m.SetBy); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlayerBinaryRecordCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlayerBinaryRecordCreate) UnmarshalBinary(b []byte) error {
	var res ModelsPlayerBinaryRecordCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

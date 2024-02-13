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

// ModelsGameBinaryRecordCreate Models game binary record create
//
// swagger:model Models game binary record create.
type ModelsGameBinaryRecordCreate struct {

	// File type of the game binary record
	// Required: true
	FileType *string `json:"file_type"`

	// Game binary record identifier
	// Required: true
	Key *string `json:"key"`

	// Indicate which party that could modify the record
	// Enum: ['CLIENT', 'SERVER']
	// Required: true
	SetBy *string `json:"set_by"`

	// TTL configuration for the game record
	TTLConfig *ModelsTTLConfigDTO `json:"ttl_config,omitempty"`
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

var modelsGameBinaryRecordCreateTypeSetByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsGameBinaryRecordCreateTypeSetByPropEnum = append(modelsGameBinaryRecordCreateTypeSetByPropEnum, v)
	}
}

const (

	// ModelsGameBinaryRecordCreateSetByCLIENT captures enum value "CLIENT"
	ModelsGameBinaryRecordCreateSetByCLIENT string = "CLIENT"

	// ModelsGameBinaryRecordCreateSetBySERVER captures enum value "SERVER"
	ModelsGameBinaryRecordCreateSetBySERVER string = "SERVER"
)

// prop value enum
func (m *ModelsGameBinaryRecordCreate) validateSetByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsGameBinaryRecordCreateTypeSetByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsGameBinaryRecordCreate) validateSetBy(formats strfmt.Registry) error {

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

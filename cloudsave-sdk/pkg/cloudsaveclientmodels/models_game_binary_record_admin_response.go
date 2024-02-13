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

// ModelsGameBinaryRecordAdminResponse Models game binary record admin response
//
// swagger:model Models game binary record admin response.
type ModelsGameBinaryRecordAdminResponse struct {

	// binary_info
	BinaryInfo *ModelsBinaryInfoResponse `json:"binary_info,omitempty"`

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// key
	// Required: true
	Key *string `json:"key"`

	// Namespace of the game
	// Required: true
	Namespace *string `json:"namespace"`

	// Indicate which party that could modify the record
	// Enum: ['CLIENT', 'SERVER']
	SetBy string `json:"set_by,omitempty"`

	// TTL configuration for the game record
	TTLConfig *ModelsTTLConfigDTO `json:"ttl_config,omitempty"`

	// updated_at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updated_at"`
}

// Validate validates this Models game binary record admin response
func (m *ModelsGameBinaryRecordAdminResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGameBinaryRecordAdminResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameBinaryRecordAdminResponse) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameBinaryRecordAdminResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var modelsGameBinaryRecordAdminResponseTypeSetByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsGameBinaryRecordAdminResponseTypeSetByPropEnum = append(modelsGameBinaryRecordAdminResponseTypeSetByPropEnum, v)
	}
}

const (

	// ModelsGameBinaryRecordAdminResponseSetByCLIENT captures enum value "CLIENT"
	ModelsGameBinaryRecordAdminResponseSetByCLIENT string = "CLIENT"

	// ModelsGameBinaryRecordAdminResponseSetBySERVER captures enum value "SERVER"
	ModelsGameBinaryRecordAdminResponseSetBySERVER string = "SERVER"
)

// prop value enum
func (m *ModelsGameBinaryRecordAdminResponse) validateSetByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsGameBinaryRecordAdminResponseTypeSetByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsGameBinaryRecordAdminResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updated_at", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGameBinaryRecordAdminResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameBinaryRecordAdminResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGameBinaryRecordAdminResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

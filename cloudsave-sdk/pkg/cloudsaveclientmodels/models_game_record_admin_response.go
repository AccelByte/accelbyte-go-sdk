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

// ModelsGameRecordAdminResponse Models game record admin response
//
// swagger:model Models game record admin response.
type ModelsGameRecordAdminResponse struct {

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// Game record identifier
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

	// Game record data, should be in valid json format
	// Required: true
	Value interface{} `json:"value"`
}

// Validate validates this Models game record admin response
func (m *ModelsGameRecordAdminResponse) Validate(formats strfmt.Registry) error {
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

func (m *ModelsGameRecordAdminResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameRecordAdminResponse) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameRecordAdminResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var modelsGameRecordAdminResponseTypeSetByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsGameRecordAdminResponseTypeSetByPropEnum = append(modelsGameRecordAdminResponseTypeSetByPropEnum, v)
	}
}

const (

	// ModelsGameRecordAdminResponseSetByCLIENT captures enum value "CLIENT"
	ModelsGameRecordAdminResponseSetByCLIENT string = "CLIENT"

	// ModelsGameRecordAdminResponseSetBySERVER captures enum value "SERVER"
	ModelsGameRecordAdminResponseSetBySERVER string = "SERVER"
)

// prop value enum
func (m *ModelsGameRecordAdminResponse) validateSetByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsGameRecordAdminResponseTypeSetByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsGameRecordAdminResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updated_at", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGameRecordAdminResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameRecordAdminResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGameRecordAdminResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

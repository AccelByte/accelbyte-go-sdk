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

// ModelsGameBinaryRecordMetadataRequest Models game binary record metadata request
//
// swagger:model Models game binary record metadata request.
type ModelsGameBinaryRecordMetadataRequest struct {

	// Indicate which party that could modify the record
	// Enum: ['CLIENT', 'SERVER']
	// Required: true
	SetBy *string `json:"set_by"`

	// TTL configuration for the game record
	TTLConfig *ModelsTTLConfigDTO `json:"ttl_config,omitempty"`
}

// Validate validates this Models game binary record metadata request
func (m *ModelsGameBinaryRecordMetadataRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSetBy(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsGameBinaryRecordMetadataRequestTypeSetByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsGameBinaryRecordMetadataRequestTypeSetByPropEnum = append(modelsGameBinaryRecordMetadataRequestTypeSetByPropEnum, v)
	}
}

const (

	// ModelsGameBinaryRecordMetadataRequestSetByCLIENT captures enum value "CLIENT"
	ModelsGameBinaryRecordMetadataRequestSetByCLIENT string = "CLIENT"

	// ModelsGameBinaryRecordMetadataRequestSetBySERVER captures enum value "SERVER"
	ModelsGameBinaryRecordMetadataRequestSetBySERVER string = "SERVER"
)

// prop value enum
func (m *ModelsGameBinaryRecordMetadataRequest) validateSetByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsGameBinaryRecordMetadataRequestTypeSetByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsGameBinaryRecordMetadataRequest) validateSetBy(formats strfmt.Registry) error {

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
func (m *ModelsGameBinaryRecordMetadataRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameBinaryRecordMetadataRequest) UnmarshalBinary(b []byte) error {
	var res ModelsGameBinaryRecordMetadataRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

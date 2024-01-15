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

// ModelsAdminConcurrentRecordRequest Models admin concurrent record request
//
// swagger:model Models admin concurrent record request.
type ModelsAdminConcurrentRecordRequest struct {

	// Indicate which party that could modify the record
	// Enum: ['CLIENT', 'SERVER']
	// Required: true
	SetBy *string `json:"set_by"`

	// Precondition for concurrent request, updatedAt should be the same as record's updatedAt
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// Record data, should be in valid json format
	// Required: true
	Value interface{} `json:"value"`
}

// Validate validates this Models admin concurrent record request
func (m *ModelsAdminConcurrentRecordRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSetBy(formats); err != nil {
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

var modelsAdminConcurrentRecordRequestTypeSetByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsAdminConcurrentRecordRequestTypeSetByPropEnum = append(modelsAdminConcurrentRecordRequestTypeSetByPropEnum, v)
	}
}

const (

	// ModelsAdminConcurrentRecordRequestSetByCLIENT captures enum value "CLIENT"
	ModelsAdminConcurrentRecordRequestSetByCLIENT string = "CLIENT"

	// ModelsAdminConcurrentRecordRequestSetBySERVER captures enum value "SERVER"
	ModelsAdminConcurrentRecordRequestSetBySERVER string = "SERVER"
)

// prop value enum
func (m *ModelsAdminConcurrentRecordRequest) validateSetByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsAdminConcurrentRecordRequestTypeSetByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsAdminConcurrentRecordRequest) validateSetBy(formats strfmt.Registry) error {

	if err := validate.Required("set_by", "body", m.SetBy); err != nil {
		return err
	}

	// value enum
	if err := m.validateSetByEnum("set_by", "body", *m.SetBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminConcurrentRecordRequest) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminConcurrentRecordRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminConcurrentRecordRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminConcurrentRecordRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

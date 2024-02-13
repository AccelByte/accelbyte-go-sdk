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

// ModelsTTLConfigDTO Models TTL config DTO
//
// swagger:model Models TTL config DTO.
type ModelsTTLConfigDTO struct {

	// Incidate what action will be done after the record expires
	// Enum: ['DELETE']
	// Required: true
	Action *string `json:"action"`

	// Indicate when the record will be expired, should be in RFC3339 format
	// Required: true
	// Format: date-time
	ExpiresAt strfmt.DateTime `json:"expires_at"`
}

// Validate validates this Models TTL config DTO
func (m *ModelsTTLConfigDTO) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiresAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsTtlConfigDtoTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DELETE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsTtlConfigDtoTypeActionPropEnum = append(modelsTtlConfigDtoTypeActionPropEnum, v)
	}
}

const (

	// ModelsTTLConfigDTOActionDELETE captures enum value "DELETE"
	ModelsTTLConfigDTOActionDELETE string = "DELETE"
)

// prop value enum
func (m *ModelsTTLConfigDTO) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsTtlConfigDtoTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsTTLConfigDTO) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	// value enum
	if err := m.validateActionEnum("action", "body", *m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTTLConfigDTO) validateExpiresAt(formats strfmt.Registry) error {

	if err := validate.Required("expires_at", "body", strfmt.DateTime(m.ExpiresAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("expires_at", "body", "date-time", m.ExpiresAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTTLConfigDTO) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTTLConfigDTO) UnmarshalBinary(b []byte) error {
	var res ModelsTTLConfigDTO
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

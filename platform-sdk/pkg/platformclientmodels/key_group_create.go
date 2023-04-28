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

// KeyGroupCreate Key group create
//
// swagger:model Key group create.
type KeyGroupCreate struct {

	// The description of the KeyGroup, max length is 1024 characters
	Description string `json:"description,omitempty"`

	// The name of the KeyGroup, a-z0-9_ 120 max length
	// Required: true
	Name *string `json:"name"`

	// The status of the KeyGroup, default ACTIVE
	// Enum: ['ACTIVE', 'INACTIVE']
	Status string `json:"status,omitempty"`

	// The tags of the KeyGroup
	Tags []string `json:"tags,omitempty"`
}

// Validate validates this Key group create
func (m *KeyGroupCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *KeyGroupCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var keyGroupCreateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		keyGroupCreateTypeStatusPropEnum = append(keyGroupCreateTypeStatusPropEnum, v)
	}
}

const (

	// KeyGroupCreateStatusACTIVE captures enum value "ACTIVE"
	KeyGroupCreateStatusACTIVE string = "ACTIVE"

	// KeyGroupCreateStatusINACTIVE captures enum value "INACTIVE"
	KeyGroupCreateStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *KeyGroupCreate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, keyGroupCreateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *KeyGroupCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *KeyGroupCreate) UnmarshalBinary(b []byte) error {
	var res KeyGroupCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

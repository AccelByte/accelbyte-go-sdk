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

// KeyInfo Key info
//
// swagger:model Key info.
type KeyInfo struct {

	// order No. that grant this key
	AcquireOrderNo string `json:"acquireOrderNo,omitempty"`

	// user Id who get this key
	AcquireUserID string `json:"acquireUserId,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// key id
	// Required: true
	ID *string `json:"id"`

	// key upload file
	// Required: true
	KeyFile *string `json:"keyFile"`

	// key group id
	// Required: true
	KeyGroupID *string `json:"keyGroupId"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// status
	// Enum: ['ACQUIRED', 'ACTIVE']
	// Required: true
	Status *string `json:"status"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// key value
	// Required: true
	Value *string `json:"value"`
}

// Validate validates this Key info
func (m *KeyInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKeyFile(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKeyGroupID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *KeyInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *KeyInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *KeyInfo) validateKeyFile(formats strfmt.Registry) error {

	if err := validate.Required("keyFile", "body", m.KeyFile); err != nil {
		return err
	}

	return nil
}

func (m *KeyInfo) validateKeyGroupID(formats strfmt.Registry) error {

	if err := validate.Required("keyGroupId", "body", m.KeyGroupID); err != nil {
		return err
	}

	return nil
}

func (m *KeyInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var keyInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACQUIRED", "ACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		keyInfoTypeStatusPropEnum = append(keyInfoTypeStatusPropEnum, v)
	}
}

const (

	// KeyInfoStatusACQUIRED captures enum value "ACQUIRED"
	KeyInfoStatusACQUIRED string = "ACQUIRED"

	// KeyInfoStatusACTIVE captures enum value "ACTIVE"
	KeyInfoStatusACTIVE string = "ACTIVE"
)

// prop value enum
func (m *KeyInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, keyInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *KeyInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *KeyInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *KeyInfo) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *KeyInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *KeyInfo) UnmarshalBinary(b []byte) error {
	var res KeyInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

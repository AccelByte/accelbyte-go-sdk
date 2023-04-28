// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// NamespaceStatusUpdate Namespace status update
//
// swagger:model Namespace status update.
type NamespaceStatusUpdate struct {

	// namespace status
	// Enum: ['ACTIVE', 'INACTIVE']
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Namespace status update
func (m *NamespaceStatusUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var namespaceStatusUpdateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		namespaceStatusUpdateTypeStatusPropEnum = append(namespaceStatusUpdateTypeStatusPropEnum, v)
	}
}

const (

	// NamespaceStatusUpdateStatusACTIVE captures enum value "ACTIVE"
	NamespaceStatusUpdateStatusACTIVE string = "ACTIVE"

	// NamespaceStatusUpdateStatusINACTIVE captures enum value "INACTIVE"
	NamespaceStatusUpdateStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *NamespaceStatusUpdate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, namespaceStatusUpdateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *NamespaceStatusUpdate) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *NamespaceStatusUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NamespaceStatusUpdate) UnmarshalBinary(b []byte) error {
	var res NamespaceStatusUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

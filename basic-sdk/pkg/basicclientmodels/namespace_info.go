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

// NamespaceInfo Namespace info
//
// swagger:model Namespace info.
type NamespaceInfo struct {

	// clientId is only present on multi tenant mode with namespace is not publisher namespace
	ClientID string `json:"clientId,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// namespace display name
	// Required: true
	DisplayName *string `json:"displayName"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// parentNamespace is only present in multi tenant mode
	ParentNamespace string `json:"parentNamespace,omitempty"`

	// status
	// Enum: ['ACTIVE', 'DELETED', 'INACTIVE']
	Status string `json:"status,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Namespace info
func (m *NamespaceInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *NamespaceInfo) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *NamespaceInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var namespaceInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "DELETED", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		namespaceInfoTypeStatusPropEnum = append(namespaceInfoTypeStatusPropEnum, v)
	}
}

const (

	// NamespaceInfoStatusACTIVE captures enum value "ACTIVE"
	NamespaceInfoStatusACTIVE string = "ACTIVE"

	// NamespaceInfoStatusDELETED captures enum value "DELETED"
	NamespaceInfoStatusDELETED string = "DELETED"

	// NamespaceInfoStatusINACTIVE captures enum value "INACTIVE"
	NamespaceInfoStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *NamespaceInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, namespaceInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *NamespaceInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NamespaceInfo) UnmarshalBinary(b []byte) error {
	var res NamespaceInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

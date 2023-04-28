// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDSMConfigRecord Models DSM config record
//
// swagger:model Models DSM config record.
type ModelsDSMConfigRecord struct {

	// claim_timeout
	// Required: true
	// Format: int32
	ClaimTimeout int32 `json:"claim_timeout"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// creation_timeout
	// Required: true
	// Format: int32
	CreationTimeout int32 `json:"creation_timeout"`

	// default_version
	// Required: true
	DefaultVersion string `json:"default_version"`

	// modifiedby
	// Required: true
	ModifiedBy *string `json:"modifiedBy"`

	// namespace
	// Required: true
	Namespace string `json:"namespace"`

	// port
	// Required: true
	// Format: int32
	Port int32 `json:"port"`

	// ports
	// Required: true
	Ports map[string]int64 `json:"ports"`

	// protocol
	// Required: true
	Protocol string `json:"protocol"`

	// providers
	// Required: true
	Providers []string `json:"providers"`

	// session_timeout
	// Required: true
	// Format: int32
	SessionTimeout int32 `json:"session_timeout"`

	// unreachable_timeout
	// Required: true
	// Format: int32
	UnreachableTimeout int32 `json:"unreachable_timeout"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Models DSM config record
func (m *ModelsDSMConfigRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClaimTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreationTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateModifiedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePort(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProtocol(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProviders(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTimeout(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUnreachableTimeout(formats); err != nil {
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

func (m *ModelsDSMConfigRecord) validateClaimTimeout(formats strfmt.Registry) error {

	if err := validate.Required("claim_timeout", "body", m.ClaimTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateCreationTimeout(formats strfmt.Registry) error {

	if err := validate.Required("creation_timeout", "body", m.CreationTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateDefaultVersion(formats strfmt.Registry) error {

	if err := validate.Required("default_version", "body", m.DefaultVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateModifiedBy(formats strfmt.Registry) error {

	if err := validate.Required("modifiedBy", "body", m.ModifiedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validatePort(formats strfmt.Registry) error {

	if err := validate.Required("port", "body", m.Port); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateProtocol(formats strfmt.Registry) error {

	if err := validate.Required("protocol", "body", m.Protocol); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateProviders(formats strfmt.Registry) error {

	if err := validate.Required("providers", "body", m.Providers); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateSessionTimeout(formats strfmt.Registry) error {

	if err := validate.Required("session_timeout", "body", m.SessionTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateUnreachableTimeout(formats strfmt.Registry) error {

	if err := validate.Required("unreachable_timeout", "body", m.UnreachableTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSMConfigRecord) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDSMConfigRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDSMConfigRecord) UnmarshalBinary(b []byte) error {
	var res ModelsDSMConfigRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

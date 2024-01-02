// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// EntitlementPlatformConfigInfo Entitlement platform config info
//
// swagger:model Entitlement platform config info.
type EntitlementPlatformConfigInfo struct {

	// allowed entitlement origins
	// Required: true
	AllowedPlatformOrigins []string `json:"allowedPlatformOrigins"`

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// config id
	ID string `json:"id,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platform
	// Required: true
	Platform *string `json:"platform"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Entitlement platform config info
func (m *EntitlementPlatformConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowedPlatformOrigins(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatform(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *EntitlementPlatformConfigInfo) validateAllowedPlatformOrigins(formats strfmt.Registry) error {

	if err := validate.Required("allowedPlatformOrigins", "body", m.AllowedPlatformOrigins); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementPlatformConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementPlatformConfigInfo) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementPlatformConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementPlatformConfigInfo) UnmarshalBinary(b []byte) error {
	var res EntitlementPlatformConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

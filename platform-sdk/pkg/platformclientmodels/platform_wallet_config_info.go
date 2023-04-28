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

// PlatformWalletConfigInfo Platform wallet config info
//
// swagger:model Platform wallet config info.
type PlatformWalletConfigInfo struct {

	// allowed balance origin, sorted list
	// Required: true
	AllowedBalanceOrigins []string `json:"allowedBalanceOrigins"`

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

// Validate validates this Platform wallet config info
func (m *PlatformWalletConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowedBalanceOrigins(formats); err != nil {
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

func (m *PlatformWalletConfigInfo) validateAllowedBalanceOrigins(formats strfmt.Registry) error {

	if err := validate.Required("allowedBalanceOrigins", "body", m.AllowedBalanceOrigins); err != nil {
		return err
	}

	return nil
}

func (m *PlatformWalletConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PlatformWalletConfigInfo) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlatformWalletConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformWalletConfigInfo) UnmarshalBinary(b []byte) error {
	var res PlatformWalletConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

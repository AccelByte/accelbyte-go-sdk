// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelProgressionInfo Model progression info
//
// swagger:model Model progression info.
type ModelProgressionInfo struct {

	// createdat
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"createdAt"`

	// dlcs
	Dlcs *PlatformDLCAggResponse `json:"dlcs,omitempty"`

	// lastlogintime
	// Format: int64
	LastLoginTime int64 `json:"lastLoginTime,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// userban
	UserBan *ModelSimpleUserBan `json:"userBan,omitempty"`

	// wallets
	Wallets []*PlatformWalletAggResponse `json:"wallets,omitempty"`
}

// Validate validates this Model progression info
func (m *ModelProgressionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
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

func (m *ModelProgressionInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelProgressionInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelProgressionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelProgressionInfo) UnmarshalBinary(b []byte) error {
	var res ModelProgressionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

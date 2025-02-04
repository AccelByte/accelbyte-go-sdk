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

// AccountcommonRegisteredDomain Accountcommon registered domain
//
// swagger:model Accountcommon registered domain.
type AccountcommonRegisteredDomain struct {

	// affectedclientids
	// Required: true
	AffectedClientIDs []string `json:"affectedClientIDs"`

	// domain
	// Required: true
	Domain *string `json:"domain"`

	// namespaces
	// Required: true
	Namespaces []string `json:"namespaces"`

	// roleid
	// Required: true
	RoleID *string `json:"roleId"`

	// ssocfg
	SSOCfg *AccountcommonSSOConfig `json:"ssoCfg,omitempty"`
}

// Validate validates this Accountcommon registered domain
func (m *AccountcommonRegisteredDomain) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAffectedClientIDs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDomain(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespaces(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoleID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonRegisteredDomain) validateAffectedClientIDs(formats strfmt.Registry) error {

	if err := validate.Required("affectedClientIDs", "body", m.AffectedClientIDs); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonRegisteredDomain) validateDomain(formats strfmt.Registry) error {

	if err := validate.Required("domain", "body", m.Domain); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonRegisteredDomain) validateNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("namespaces", "body", m.Namespaces); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonRegisteredDomain) validateRoleID(formats strfmt.Registry) error {

	if err := validate.Required("roleId", "body", m.RoleID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonRegisteredDomain) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonRegisteredDomain) UnmarshalBinary(b []byte) error {
	var res AccountcommonRegisteredDomain
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

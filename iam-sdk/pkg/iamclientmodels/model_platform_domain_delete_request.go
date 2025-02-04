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

// ModelPlatformDomainDeleteRequest Model platform domain delete request
//
// swagger:model Model platform domain delete request.
type ModelPlatformDomainDeleteRequest struct {

	// domain
	// Required: true
	Domain *string `json:"domain"`

	// ssogroups
	// Required: true
	SSOGroups []string `json:"ssoGroups"`
}

// Validate validates this Model platform domain delete request
func (m *ModelPlatformDomainDeleteRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDomain(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSSOGroups(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPlatformDomainDeleteRequest) validateDomain(formats strfmt.Registry) error {

	if err := validate.Required("domain", "body", m.Domain); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformDomainDeleteRequest) validateSSOGroups(formats strfmt.Registry) error {

	if err := validate.Required("ssoGroups", "body", m.SSOGroups); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPlatformDomainDeleteRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPlatformDomainDeleteRequest) UnmarshalBinary(b []byte) error {
	var res ModelPlatformDomainDeleteRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

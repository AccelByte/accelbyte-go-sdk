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

// ModelPlatformDomainUpdateRequest Model platform domain update request
//
// swagger:model Model platform domain update request.
type ModelPlatformDomainUpdateRequest struct {

	// affectedclientids
	// Required: true
	AffectedClientIDs []string `json:"affectedClientIDs"`

	// assignednamespaces
	// Required: true
	AssignedNamespaces []string `json:"assignedNamespaces"`

	// domain
	// Required: true
	Domain *string `json:"domain"`

	// roleid
	// Required: true
	RoleID *string `json:"roleId"`
}

// Validate validates this Model platform domain update request
func (m *ModelPlatformDomainUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAffectedClientIDs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAssignedNamespaces(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDomain(formats); err != nil {
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

func (m *ModelPlatformDomainUpdateRequest) validateAffectedClientIDs(formats strfmt.Registry) error {

	if err := validate.Required("affectedClientIDs", "body", m.AffectedClientIDs); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformDomainUpdateRequest) validateAssignedNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("assignedNamespaces", "body", m.AssignedNamespaces); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformDomainUpdateRequest) validateDomain(formats strfmt.Registry) error {

	if err := validate.Required("domain", "body", m.Domain); err != nil {
		return err
	}

	return nil
}

func (m *ModelPlatformDomainUpdateRequest) validateRoleID(formats strfmt.Registry) error {

	if err := validate.Required("roleId", "body", m.RoleID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPlatformDomainUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPlatformDomainUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ModelPlatformDomainUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

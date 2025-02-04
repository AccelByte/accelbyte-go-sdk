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

// ModelPlatformDomainPatchRequest Model platform domain patch request
//
// swagger:model Model platform domain patch request.
type ModelPlatformDomainPatchRequest struct {

	// affectedclientids
	AffectedClientIDs []string `json:"affectedClientIDs,omitempty"`

	// assignednamespaces
	AssignedNamespaces []string `json:"assignedNamespaces,omitempty"`

	// domain
	// Required: true
	Domain *string `json:"domain"`

	// roleid
	RoleID string `json:"roleId,omitempty"`

	// ssocfg
	SSOCfg *AccountcommonSSOConfigPatchReq `json:"ssoCfg,omitempty"`
}

// Validate validates this Model platform domain patch request
func (m *ModelPlatformDomainPatchRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDomain(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPlatformDomainPatchRequest) validateDomain(formats strfmt.Registry) error {

	if err := validate.Required("domain", "body", m.Domain); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPlatformDomainPatchRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPlatformDomainPatchRequest) UnmarshalBinary(b []byte) error {
	var res ModelPlatformDomainPatchRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

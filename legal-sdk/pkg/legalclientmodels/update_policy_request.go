// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UpdatePolicyRequest Update policy request
//
// swagger:model Update policy request.
type UpdatePolicyRequest struct {

	// description
	Description string `json:"description,omitempty"`

	// isdefaultopted
	// Required: true
	IsDefaultOpted *bool `json:"isDefaultOpted"`

	// ismandatory
	// Required: true
	IsMandatory *bool `json:"isMandatory"`

	// policyname
	// Required: true
	PolicyName *string `json:"policyName"`

	// readableid
	ReadableID string `json:"readableId,omitempty"`

	// shouldnotifyonupdate
	// Required: true
	ShouldNotifyOnUpdate *bool `json:"shouldNotifyOnUpdate"`
}

// Validate validates this Update policy request
func (m *UpdatePolicyRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsDefaultOpted(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsMandatory(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShouldNotifyOnUpdate(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UpdatePolicyRequest) validateIsDefaultOpted(formats strfmt.Registry) error {

	if err := validate.Required("isDefaultOpted", "body", m.IsDefaultOpted); err != nil {
		return err
	}

	return nil
}

func (m *UpdatePolicyRequest) validateIsMandatory(formats strfmt.Registry) error {

	if err := validate.Required("isMandatory", "body", m.IsMandatory); err != nil {
		return err
	}

	return nil
}

func (m *UpdatePolicyRequest) validatePolicyName(formats strfmt.Registry) error {

	if err := validate.Required("policyName", "body", m.PolicyName); err != nil {
		return err
	}

	return nil
}

func (m *UpdatePolicyRequest) validateShouldNotifyOnUpdate(formats strfmt.Registry) error {

	if err := validate.Required("shouldNotifyOnUpdate", "body", m.ShouldNotifyOnUpdate); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UpdatePolicyRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UpdatePolicyRequest) UnmarshalBinary(b []byte) error {
	var res UpdatePolicyRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

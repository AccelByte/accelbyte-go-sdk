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

// UpdatePolicyVersionRequest Update policy version request
//
// swagger:model Update policy version request.
type UpdatePolicyVersionRequest struct {

	// description
	// Required: true
	Description *string `json:"description"`

	// displayversion
	// Required: true
	DisplayVersion *string `json:"displayVersion"`

	// iscommitted
	// Required: true
	IsCommitted *bool `json:"isCommitted"`
}

// Validate validates this Update policy version request
func (m *UpdatePolicyVersionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsCommitted(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UpdatePolicyVersionRequest) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *UpdatePolicyVersionRequest) validateDisplayVersion(formats strfmt.Registry) error {

	if err := validate.Required("displayVersion", "body", m.DisplayVersion); err != nil {
		return err
	}

	return nil
}

func (m *UpdatePolicyVersionRequest) validateIsCommitted(formats strfmt.Registry) error {

	if err := validate.Required("isCommitted", "body", m.IsCommitted); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UpdatePolicyVersionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UpdatePolicyVersionRequest) UnmarshalBinary(b []byte) error {
	var res UpdatePolicyVersionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

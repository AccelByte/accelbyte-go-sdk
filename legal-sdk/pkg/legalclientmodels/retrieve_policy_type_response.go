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

// RetrievePolicyTypeResponse Retrieve policy type response
//
// swagger:model Retrieve policy type response.
type RetrievePolicyTypeResponse struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// isneeddocument
	// Required: true
	IsNeedDocument *bool `json:"isNeedDocument"`

	// policytypename
	// Required: true
	PolicyTypeName *string `json:"policyTypeName"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Retrieve policy type response
func (m *RetrievePolicyTypeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsNeedDocument(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyTypeName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrievePolicyTypeResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RetrievePolicyTypeResponse) validateIsNeedDocument(formats strfmt.Registry) error {

	if err := validate.Required("isNeedDocument", "body", m.IsNeedDocument); err != nil {
		return err
	}

	return nil
}

func (m *RetrievePolicyTypeResponse) validatePolicyTypeName(formats strfmt.Registry) error {

	if err := validate.Required("policyTypeName", "body", m.PolicyTypeName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrievePolicyTypeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrievePolicyTypeResponse) UnmarshalBinary(b []byte) error {
	var res RetrievePolicyTypeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

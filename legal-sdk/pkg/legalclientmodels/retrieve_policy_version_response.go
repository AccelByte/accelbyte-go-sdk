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

// RetrievePolicyVersionResponse Retrieve policy version response
//
// swagger:model Retrieve policy version response.
type RetrievePolicyVersionResponse struct {

	// basepolicyid
	BasePolicyID string `json:"basePolicyId,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// displayversion
	// Required: true
	DisplayVersion *string `json:"displayVersion"`

	// id
	// Required: true
	ID *string `json:"id"`

	// iscommitted
	// Required: true
	IsCommitted *bool `json:"isCommitted"`

	// isineffect
	// Required: true
	IsInEffect *bool `json:"isInEffect"`

	// localizedpolicyversions
	LocalizedPolicyVersions []*LocalizedPolicyVersionObject `json:"localizedPolicyVersions,omitempty"`

	// policyid
	PolicyID string `json:"policyId,omitempty"`

	// publisheddate
	// Format: date-time
	PublishedDate *strfmt.DateTime `json:"publishedDate,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Retrieve policy version response
func (m *RetrievePolicyVersionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDisplayVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsCommitted(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsInEffect(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrievePolicyVersionResponse) validateDisplayVersion(formats strfmt.Registry) error {

	if err := validate.Required("displayVersion", "body", m.DisplayVersion); err != nil {
		return err
	}

	return nil
}

func (m *RetrievePolicyVersionResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RetrievePolicyVersionResponse) validateIsCommitted(formats strfmt.Registry) error {

	if err := validate.Required("isCommitted", "body", m.IsCommitted); err != nil {
		return err
	}

	return nil
}

func (m *RetrievePolicyVersionResponse) validateIsInEffect(formats strfmt.Registry) error {

	if err := validate.Required("isInEffect", "body", m.IsInEffect); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrievePolicyVersionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrievePolicyVersionResponse) UnmarshalBinary(b []byte) error {
	var res RetrievePolicyVersionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

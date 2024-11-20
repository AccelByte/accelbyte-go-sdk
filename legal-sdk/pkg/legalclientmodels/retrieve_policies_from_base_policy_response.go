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

// RetrievePoliciesFromBasePolicyResponse Retrieve policies from base policy response
//
// swagger:model Retrieve policies from base policy response.
type RetrievePoliciesFromBasePolicyResponse struct {

	// activeversion
	ActiveVersion string `json:"activeVersion,omitempty"`

	// countries
	// Unique: true
	Countries []string `json:"countries"`

	// countrycode
	// Required: true
	CountryCode *string `json:"countryCode"`

	// countrygroupname
	CountryGroupName string `json:"countryGroupName,omitempty"`

	// countrytype
	CountryType string `json:"countryType,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// isactive
	// Unique: true
	IsActive []string `json:"isActive"`

	// lastpublished
	LastPublished string `json:"lastPublished,omitempty"`

	// policyname
	// Required: true
	PolicyName *string `json:"policyName"`

	// policyversions
	PolicyVersions []*PolicyVersionObject `json:"policyVersions,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Retrieve policies from base policy response
func (m *RetrievePoliciesFromBasePolicyResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCountryCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrievePoliciesFromBasePolicyResponse) validateCountryCode(formats strfmt.Registry) error {

	if err := validate.Required("countryCode", "body", m.CountryCode); err != nil {
		return err
	}

	return nil
}

func (m *RetrievePoliciesFromBasePolicyResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RetrievePoliciesFromBasePolicyResponse) validatePolicyName(formats strfmt.Registry) error {

	if err := validate.Required("policyName", "body", m.PolicyName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrievePoliciesFromBasePolicyResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrievePoliciesFromBasePolicyResponse) UnmarshalBinary(b []byte) error {
	var res RetrievePoliciesFromBasePolicyResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

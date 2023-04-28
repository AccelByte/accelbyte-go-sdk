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

// RetrieveUserEligibilitiesResponse Retrieve user eligibilities response
//
// swagger:model Retrieve user eligibilities response.
type RetrieveUserEligibilitiesResponse struct {

	// baseurls
	BaseUrls []string `json:"baseUrls,omitempty"`

	// countrycode
	// Required: true
	CountryCode *string `json:"countryCode"`

	// countrygroupcode
	CountryGroupCode string `json:"countryGroupCode,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// isaccepted
	// Required: true
	IsAccepted *bool `json:"isAccepted"`

	// ismandatory
	// Required: true
	IsMandatory *bool `json:"isMandatory"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// policyid
	// Required: true
	PolicyID *string `json:"policyId"`

	// policyname
	// Required: true
	PolicyName *string `json:"policyName"`

	// policytype
	// Required: true
	PolicyType *string `json:"policyType"`

	// policyversions
	PolicyVersions []*PolicyVersionWithLocalizedVersionObject `json:"policyVersions,omitempty"`

	// readableid
	ReadableID string `json:"readableId,omitempty"`
}

// Validate validates this Retrieve user eligibilities response
func (m *RetrieveUserEligibilitiesResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCountryCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsAccepted(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsMandatory(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrieveUserEligibilitiesResponse) validateCountryCode(formats strfmt.Registry) error {

	if err := validate.Required("countryCode", "body", m.CountryCode); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveUserEligibilitiesResponse) validateIsAccepted(formats strfmt.Registry) error {

	if err := validate.Required("isAccepted", "body", m.IsAccepted); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveUserEligibilitiesResponse) validateIsMandatory(formats strfmt.Registry) error {

	if err := validate.Required("isMandatory", "body", m.IsMandatory); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveUserEligibilitiesResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveUserEligibilitiesResponse) validatePolicyID(formats strfmt.Registry) error {

	if err := validate.Required("policyId", "body", m.PolicyID); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveUserEligibilitiesResponse) validatePolicyName(formats strfmt.Registry) error {

	if err := validate.Required("policyName", "body", m.PolicyName); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveUserEligibilitiesResponse) validatePolicyType(formats strfmt.Registry) error {

	if err := validate.Required("policyType", "body", m.PolicyType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveUserEligibilitiesResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveUserEligibilitiesResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveUserEligibilitiesResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

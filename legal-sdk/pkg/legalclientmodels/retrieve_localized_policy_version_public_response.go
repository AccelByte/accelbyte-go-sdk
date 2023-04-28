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

// RetrieveLocalizedPolicyVersionPublicResponse Retrieve localized policy version public response
//
// swagger:model Retrieve localized policy version public response.
type RetrieveLocalizedPolicyVersionPublicResponse struct {

	// attachmentchecksum
	AttachmentChecksum string `json:"attachmentChecksum,omitempty"`

	// attachmentlocation
	AttachmentLocation string `json:"attachmentLocation,omitempty"`

	// attachmentversionidentifier
	AttachmentVersionIdentifier string `json:"attachmentVersionIdentifier,omitempty"`

	// basepolicyid
	BasePolicyID string `json:"basePolicyId,omitempty"`

	// baseurls
	BaseUrls []string `json:"baseUrls,omitempty"`

	// contenttype
	ContentType string `json:"contentType,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// localecode
	// Required: true
	LocaleCode *string `json:"localeCode"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// policy
	// Required: true
	Policy *PolicyObject `json:"policy"`

	// policyversion
	// Required: true
	PolicyVersion *PolicyVersionObject `json:"policyVersion"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Retrieve localized policy version public response
func (m *RetrieveLocalizedPolicyVersionPublicResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLocaleCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyVersion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrieveLocalizedPolicyVersionPublicResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveLocalizedPolicyVersionPublicResponse) validateLocaleCode(formats strfmt.Registry) error {

	if err := validate.Required("localeCode", "body", m.LocaleCode); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveLocalizedPolicyVersionPublicResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveLocalizedPolicyVersionPublicResponse) validatePolicy(formats strfmt.Registry) error {

	if err := validate.Required("policy", "body", m.Policy); err != nil {
		return err
	}

	if m.Policy != nil {
		if err := m.Policy.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("policy")
			}
			return err
		}
	}

	return nil
}

func (m *RetrieveLocalizedPolicyVersionPublicResponse) validatePolicyVersion(formats strfmt.Registry) error {

	if err := validate.Required("policyVersion", "body", m.PolicyVersion); err != nil {
		return err
	}

	if m.PolicyVersion != nil {
		if err := m.PolicyVersion.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("policyVersion")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveLocalizedPolicyVersionPublicResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveLocalizedPolicyVersionPublicResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveLocalizedPolicyVersionPublicResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

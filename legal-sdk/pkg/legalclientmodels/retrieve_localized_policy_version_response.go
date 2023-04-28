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

// RetrieveLocalizedPolicyVersionResponse Retrieve localized policy version response
//
// swagger:model Retrieve localized policy version response.
type RetrieveLocalizedPolicyVersionResponse struct {

	// attachmentchecksum
	AttachmentChecksum string `json:"attachmentChecksum,omitempty"`

	// attachmentlocation
	AttachmentLocation string `json:"attachmentLocation,omitempty"`

	// attachmentversionidentifier
	AttachmentVersionIdentifier string `json:"attachmentVersionIdentifier,omitempty"`

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

	// policy
	Policy *PolicyObject `json:"policy,omitempty"`

	// policyversion
	// Required: true
	PolicyVersion *PolicyVersionObject `json:"policyVersion"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Retrieve localized policy version response
func (m *RetrieveLocalizedPolicyVersionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLocaleCode(formats); err != nil {
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

func (m *RetrieveLocalizedPolicyVersionResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveLocalizedPolicyVersionResponse) validateLocaleCode(formats strfmt.Registry) error {

	if err := validate.Required("localeCode", "body", m.LocaleCode); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveLocalizedPolicyVersionResponse) validatePolicyVersion(formats strfmt.Registry) error {

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
func (m *RetrieveLocalizedPolicyVersionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveLocalizedPolicyVersionResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveLocalizedPolicyVersionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

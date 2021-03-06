// Code generated by go-swagger; DO NOT EDIT.

package legalclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RetrieveLocalizedPolicyVersionResponse retrieve localized policy version response
//
// swagger:model RetrieveLocalizedPolicyVersionResponse
type RetrieveLocalizedPolicyVersionResponse struct {

	// attachment checksum
	AttachmentChecksum string `json:"attachmentChecksum,omitempty"`

	// attachment location
	AttachmentLocation string `json:"attachmentLocation,omitempty"`

	// attachment version identifier
	AttachmentVersionIdentifier string `json:"attachmentVersionIdentifier,omitempty"`

	// base urls
	BaseUrls []string `json:"baseUrls"`

	// content type
	ContentType string `json:"contentType,omitempty"`

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// locale code
	// Required: true
	LocaleCode *string `json:"localeCode"`

	// policy
	// Required: true
	Policy *PolicyObject `json:"policy"`

	// policy version
	// Required: true
	PolicyVersion *PolicyVersionObject `json:"policyVersion"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this retrieve localized policy version response
func (m *RetrieveLocalizedPolicyVersionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateLocaleCode(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePolicy(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePolicyVersion(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrieveLocalizedPolicyVersionResponse) validateCreatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.CreatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
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

func (m *RetrieveLocalizedPolicyVersionResponse) validatePolicy(formats strfmt.Registry) error {

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

func (m *RetrieveLocalizedPolicyVersionResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.UpdatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
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

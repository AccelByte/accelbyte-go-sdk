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

// CreatePolicyResponse Create policy response
//
// swagger:model Create policy response.
type CreatePolicyResponse struct {

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

	// isdefaultselection
	// Required: true
	IsDefaultSelection *bool `json:"isDefaultSelection"`

	// ismandatory
	// Required: true
	IsMandatory *bool `json:"isMandatory"`

	// policyname
	// Required: true
	PolicyName *string `json:"policyName"`

	// policyversions
	PolicyVersions []*PolicyVersionObject `json:"policyVersions,omitempty"`

	// readableid
	ReadableID string `json:"readableId,omitempty"`

	// shouldnotifyonupdate
	// Required: true
	ShouldNotifyOnUpdate *bool `json:"shouldNotifyOnUpdate"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Create policy response
func (m *CreatePolicyResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCountryCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsDefaultSelection(formats); err != nil {
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

func (m *CreatePolicyResponse) validateCountryCode(formats strfmt.Registry) error {

	if err := validate.Required("countryCode", "body", m.CountryCode); err != nil {
		return err
	}

	return nil
}

func (m *CreatePolicyResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *CreatePolicyResponse) validateIsDefaultSelection(formats strfmt.Registry) error {

	if err := validate.Required("isDefaultSelection", "body", m.IsDefaultSelection); err != nil {
		return err
	}

	return nil
}

func (m *CreatePolicyResponse) validateIsMandatory(formats strfmt.Registry) error {

	if err := validate.Required("isMandatory", "body", m.IsMandatory); err != nil {
		return err
	}

	return nil
}

func (m *CreatePolicyResponse) validatePolicyName(formats strfmt.Registry) error {

	if err := validate.Required("policyName", "body", m.PolicyName); err != nil {
		return err
	}

	return nil
}

func (m *CreatePolicyResponse) validateShouldNotifyOnUpdate(formats strfmt.Registry) error {

	if err := validate.Required("shouldNotifyOnUpdate", "body", m.ShouldNotifyOnUpdate); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CreatePolicyResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreatePolicyResponse) UnmarshalBinary(b []byte) error {
	var res CreatePolicyResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

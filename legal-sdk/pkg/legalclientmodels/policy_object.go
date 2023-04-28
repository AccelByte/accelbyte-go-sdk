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

// PolicyObject Policy object
//
// swagger:model Policy object.
type PolicyObject struct {

	// countrycode
	// Required: true
	CountryCode *string `json:"countryCode"`

	// countrygroupcode
	CountryGroupCode string `json:"countryGroupCode,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// isdefaultopted
	// Required: true
	IsDefaultOpted *bool `json:"isDefaultOpted"`

	// isdefaultselection
	// Required: true
	IsDefaultSelection *bool `json:"isDefaultSelection"`

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

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Policy object
func (m *PolicyObject) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCountryCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsDefaultOpted(formats); err != nil {
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

func (m *PolicyObject) validateCountryCode(formats strfmt.Registry) error {

	if err := validate.Required("countryCode", "body", m.CountryCode); err != nil {
		return err
	}

	return nil
}

func (m *PolicyObject) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *PolicyObject) validateIsDefaultOpted(formats strfmt.Registry) error {

	if err := validate.Required("isDefaultOpted", "body", m.IsDefaultOpted); err != nil {
		return err
	}

	return nil
}

func (m *PolicyObject) validateIsDefaultSelection(formats strfmt.Registry) error {

	if err := validate.Required("isDefaultSelection", "body", m.IsDefaultSelection); err != nil {
		return err
	}

	return nil
}

func (m *PolicyObject) validateIsMandatory(formats strfmt.Registry) error {

	if err := validate.Required("isMandatory", "body", m.IsMandatory); err != nil {
		return err
	}

	return nil
}

func (m *PolicyObject) validatePolicyName(formats strfmt.Registry) error {

	if err := validate.Required("policyName", "body", m.PolicyName); err != nil {
		return err
	}

	return nil
}

func (m *PolicyObject) validateShouldNotifyOnUpdate(formats strfmt.Registry) error {

	if err := validate.Required("shouldNotifyOnUpdate", "body", m.ShouldNotifyOnUpdate); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PolicyObject) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PolicyObject) UnmarshalBinary(b []byte) error {
	var res PolicyObject
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

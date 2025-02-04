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

// SimpleLocalizedPolicyVersionObject Simple localized policy version object
//
// swagger:model Simple localized policy version object.
type SimpleLocalizedPolicyVersionObject struct {

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

	// localecode
	// Required: true
	LocaleCode *string `json:"localeCode"`

	// publisheddate
	// Format: date-time
	PublishedDate *strfmt.DateTime `json:"publishedDate,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Simple localized policy version object
func (m *SimpleLocalizedPolicyVersionObject) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsDefaultSelection(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLocaleCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SimpleLocalizedPolicyVersionObject) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *SimpleLocalizedPolicyVersionObject) validateIsDefaultSelection(formats strfmt.Registry) error {

	if err := validate.Required("isDefaultSelection", "body", m.IsDefaultSelection); err != nil {
		return err
	}

	return nil
}

func (m *SimpleLocalizedPolicyVersionObject) validateLocaleCode(formats strfmt.Registry) error {

	if err := validate.Required("localeCode", "body", m.LocaleCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SimpleLocalizedPolicyVersionObject) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SimpleLocalizedPolicyVersionObject) UnmarshalBinary(b []byte) error {
	var res SimpleLocalizedPolicyVersionObject
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

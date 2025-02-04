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

// SimplePolicyVersionWithLocalizedVersionObject Simple policy version with localized version object
//
// swagger:model Simple policy version with localized version object.
type SimplePolicyVersionWithLocalizedVersionObject struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// localizedpolicyversions
	LocalizedPolicyVersions []*SimpleLocalizedPolicyVersionObject `json:"localizedPolicyVersions,omitempty"`

	// publisheddate
	// Format: date-time
	PublishedDate *strfmt.DateTime `json:"publishedDate,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Simple policy version with localized version object
func (m *SimplePolicyVersionWithLocalizedVersionObject) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SimplePolicyVersionWithLocalizedVersionObject) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SimplePolicyVersionWithLocalizedVersionObject) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SimplePolicyVersionWithLocalizedVersionObject) UnmarshalBinary(b []byte) error {
	var res SimplePolicyVersionWithLocalizedVersionObject
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

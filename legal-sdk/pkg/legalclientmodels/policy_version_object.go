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

// PolicyVersionObject Policy version object
//
// swagger:model Policy version object.
type PolicyVersionObject struct {

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

	// publisheddate
	// Format: date-time
	PublishedDate *strfmt.DateTime `json:"publishedDate,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Policy version object
func (m *PolicyVersionObject) Validate(formats strfmt.Registry) error {
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

func (m *PolicyVersionObject) validateDisplayVersion(formats strfmt.Registry) error {

	if err := validate.Required("displayVersion", "body", m.DisplayVersion); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validateIsCommitted(formats strfmt.Registry) error {

	if err := validate.Required("isCommitted", "body", m.IsCommitted); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validateIsInEffect(formats strfmt.Registry) error {

	if err := validate.Required("isInEffect", "body", m.IsInEffect); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PolicyVersionObject) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PolicyVersionObject) UnmarshalBinary(b []byte) error {
	var res PolicyVersionObject
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

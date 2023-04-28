// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// CategoryCreate Category create
//
// swagger:model Category create.
type CategoryCreate struct {

	// Category Path, A path separated by "/", start with "/" and end with combination of case of letters and numbers, max length is 255, min length is 2
	// Required: true
	CategoryPath *string `json:"categoryPath"`

	// Display name, key is language, value is display name, value max length is 255
	// Required: true
	LocalizationDisplayNames map[string]string `json:"localizationDisplayNames"`
}

// Validate validates this Category create
func (m *CategoryCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategoryPath(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CategoryCreate) validateCategoryPath(formats strfmt.Registry) error {

	if err := validate.Required("categoryPath", "body", m.CategoryPath); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CategoryCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CategoryCreate) UnmarshalBinary(b []byte) error {
	var res CategoryCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

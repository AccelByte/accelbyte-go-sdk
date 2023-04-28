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

// ViewCreate View create
//
// swagger:model View create.
type ViewCreate struct {

	// display order
	// Required: true
	// Format: int32
	DisplayOrder *int32 `json:"displayOrder"`

	// Localization, key language, value localization content
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

	// view name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this View create
func (m *ViewCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDisplayOrder(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ViewCreate) validateDisplayOrder(formats strfmt.Registry) error {

	if err := validate.Required("displayOrder", "body", m.DisplayOrder); err != nil {
		return err
	}

	return nil
}

func (m *ViewCreate) validateLocalizations(formats strfmt.Registry) error {

	if err := validate.Required("localizations", "body", m.Localizations); err != nil {
		return err
	}

	for k := range m.Localizations {

		if err := validate.Required("localizations"+"."+k, "body", m.Localizations[k]); err != nil {
			return err
		}
		if val, ok := m.Localizations[k]; ok {
			if err := val.Validate(formats); err != nil {
				return err
			}
		}

	}

	return nil
}

func (m *ViewCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ViewCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ViewCreate) UnmarshalBinary(b []byte) error {
	var res ViewCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

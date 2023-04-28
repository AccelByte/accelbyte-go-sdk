// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelTemplateResponse Model template response
//
// swagger:model Model template response.
type ModelTemplateResponse struct {

	// localizations
	// Required: true
	Localizations []*ModelLocalization `json:"localizations"`

	// templateslug
	// Required: true
	TemplateSlug *string `json:"templateSlug"`
}

// Validate validates this Model template response
func (m *ModelTemplateResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLocalizations(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTemplateSlug(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelTemplateResponse) validateLocalizations(formats strfmt.Registry) error {

	if err := validate.Required("localizations", "body", m.Localizations); err != nil {
		return err
	}

	for i := 0; i < len(m.Localizations); i++ {
		if swag.IsZero(m.Localizations[i]) { // not required
			continue
		}

		if m.Localizations[i] != nil {
			if err := m.Localizations[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("localizations" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelTemplateResponse) validateTemplateSlug(formats strfmt.Registry) error {

	if err := validate.Required("templateSlug", "body", m.TemplateSlug); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelTemplateResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelTemplateResponse) UnmarshalBinary(b []byte) error {
	var res ModelTemplateResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

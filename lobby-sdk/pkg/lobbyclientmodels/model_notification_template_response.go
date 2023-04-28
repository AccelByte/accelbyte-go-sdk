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

// ModelNotificationTemplateResponse Model notification template response
//
// swagger:model Model notification template response.
type ModelNotificationTemplateResponse struct {

	// templatelocalizations
	// Required: true
	TemplateLocalizations []*ModelLocalization `json:"templateLocalizations"`

	// templateslug
	// Required: true
	TemplateSlug *string `json:"templateSlug"`
}

// Validate validates this Model notification template response
func (m *ModelNotificationTemplateResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTemplateLocalizations(formats); err != nil {
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

func (m *ModelNotificationTemplateResponse) validateTemplateLocalizations(formats strfmt.Registry) error {

	if err := validate.Required("templateLocalizations", "body", m.TemplateLocalizations); err != nil {
		return err
	}

	for i := 0; i < len(m.TemplateLocalizations); i++ {
		if swag.IsZero(m.TemplateLocalizations[i]) { // not required
			continue
		}

		if m.TemplateLocalizations[i] != nil {
			if err := m.TemplateLocalizations[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("templateLocalizations" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelNotificationTemplateResponse) validateTemplateSlug(formats strfmt.Registry) error {

	if err := validate.Required("templateSlug", "body", m.TemplateSlug); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNotificationTemplateResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNotificationTemplateResponse) UnmarshalBinary(b []byte) error {
	var res ModelNotificationTemplateResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

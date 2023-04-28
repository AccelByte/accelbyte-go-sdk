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

// ModelTemplateLocalizationResponse Model template localization response
//
// swagger:model Model template localization response.
type ModelTemplateLocalizationResponse struct {

	// url for first page
	// Required: true
	First *string `json:"first"`

	// url for last page
	// Required: true
	Last *string `json:"last"`

	// url for next page
	// Required: true
	Next *string `json:"next"`

	// url for previous page
	// Required: true
	Previous *string `json:"previous"`

	// templatelocalization
	// Required: true
	TemplateLocalization []*ModelTemplateLocalization `json:"templateLocalization"`
}

// Validate validates this Model template localization response
func (m *ModelTemplateLocalizationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFirst(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLast(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNext(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrevious(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTemplateLocalization(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelTemplateLocalizationResponse) validateFirst(formats strfmt.Registry) error {

	if err := validate.Required("first", "body", m.First); err != nil {
		return err
	}

	return nil
}

func (m *ModelTemplateLocalizationResponse) validateLast(formats strfmt.Registry) error {

	if err := validate.Required("last", "body", m.Last); err != nil {
		return err
	}

	return nil
}

func (m *ModelTemplateLocalizationResponse) validateNext(formats strfmt.Registry) error {

	if err := validate.Required("next", "body", m.Next); err != nil {
		return err
	}

	return nil
}

func (m *ModelTemplateLocalizationResponse) validatePrevious(formats strfmt.Registry) error {

	if err := validate.Required("previous", "body", m.Previous); err != nil {
		return err
	}

	return nil
}

func (m *ModelTemplateLocalizationResponse) validateTemplateLocalization(formats strfmt.Registry) error {

	if err := validate.Required("templateLocalization", "body", m.TemplateLocalization); err != nil {
		return err
	}

	for i := 0; i < len(m.TemplateLocalization); i++ {
		if swag.IsZero(m.TemplateLocalization[i]) { // not required
			continue
		}

		if m.TemplateLocalization[i] != nil {
			if err := m.TemplateLocalization[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("templateLocalization" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelTemplateLocalizationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelTemplateLocalizationResponse) UnmarshalBinary(b []byte) error {
	var res ModelTemplateLocalizationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

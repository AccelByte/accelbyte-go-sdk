// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PassCreate Pass create
//
// swagger:model Pass create.
type PassCreate struct {

	// autoEnroll for free pass, default false
	AutoEnroll bool `json:"autoEnroll"`

	// code, allowed characters from a-z0-9_:- and start/end in alphanumeric, max length is 255
	// Required: true
	Code *string `json:"code"`

	// displayOrder for frontend to arrange the pass
	// Required: true
	// Format: int32
	DisplayOrder *int32 `json:"displayOrder"`

	// images
	Images []*Image `json:"images,omitempty"`

	// localization, {language: localization} map
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

	// pass item id
	// Required: true
	PassItemID *string `json:"passItemId"`
}

// Validate validates this Pass create
func (m *PassCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayOrder(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassItemID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PassCreate) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *PassCreate) validateDisplayOrder(formats strfmt.Registry) error {

	if err := validate.Required("displayOrder", "body", m.DisplayOrder); err != nil {
		return err
	}

	return nil
}

func (m *PassCreate) validateLocalizations(formats strfmt.Registry) error {

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

func (m *PassCreate) validatePassItemID(formats strfmt.Registry) error {

	if err := validate.Required("passItemId", "body", m.PassItemID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PassCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PassCreate) UnmarshalBinary(b []byte) error {
	var res PassCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

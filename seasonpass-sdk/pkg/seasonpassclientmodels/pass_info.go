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

// PassInfo Pass info
//
// swagger:model Pass info.
type PassInfo struct {

	// autoEnroll
	// Required: true
	AutoEnroll *bool `json:"autoEnroll"`

	// code
	// Required: true
	Code *string `json:"code"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// displayOrder
	// Required: true
	DisplayOrder *string `json:"displayOrder"`

	// images
	Images []*Image `json:"images,omitempty"`

	// localization, {language: localization} map
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// pass item id
	// Required: true
	PassItemID *string `json:"passItemId"`

	// pass item name
	// Required: true
	PassItemName *string `json:"passItemName"`

	// season id
	// Required: true
	SeasonID *string `json:"seasonId"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Pass info
func (m *PassInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoEnroll(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayOrder(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassItemName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSeasonID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PassInfo) validateAutoEnroll(formats strfmt.Registry) error {

	if err := validate.Required("autoEnroll", "body", m.AutoEnroll); err != nil {
		return err
	}

	return nil
}

func (m *PassInfo) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *PassInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PassInfo) validateDisplayOrder(formats strfmt.Registry) error {

	if err := validate.Required("displayOrder", "body", m.DisplayOrder); err != nil {
		return err
	}

	return nil
}

func (m *PassInfo) validateLocalizations(formats strfmt.Registry) error {

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

func (m *PassInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PassInfo) validatePassItemID(formats strfmt.Registry) error {

	if err := validate.Required("passItemId", "body", m.PassItemID); err != nil {
		return err
	}

	return nil
}

func (m *PassInfo) validatePassItemName(formats strfmt.Registry) error {

	if err := validate.Required("passItemName", "body", m.PassItemName); err != nil {
		return err
	}

	return nil
}

func (m *PassInfo) validateSeasonID(formats strfmt.Registry) error {

	if err := validate.Required("seasonId", "body", m.SeasonID); err != nil {
		return err
	}

	return nil
}

func (m *PassInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PassInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PassInfo) UnmarshalBinary(b []byte) error {
	var res PassInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

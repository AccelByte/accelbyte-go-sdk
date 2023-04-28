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

// LocalizedPassInfo Localized pass info
//
// swagger:model Localized pass info.
type LocalizedPassInfo struct {

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

	// description info
	Description string `json:"description,omitempty"`

	// displayOrder
	// Required: true
	DisplayOrder *string `json:"displayOrder"`

	// images
	Images []*Image `json:"images,omitempty"`

	// current language
	// Required: true
	Language *string `json:"language"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// pass item id
	// Required: true
	PassItemID *string `json:"passItemId"`

	// season id
	// Required: true
	SeasonID *string `json:"seasonId"`

	// title info
	Title string `json:"title,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Localized pass info
func (m *LocalizedPassInfo) Validate(formats strfmt.Registry) error {
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
	if err := m.validateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassItemID(formats); err != nil {
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

func (m *LocalizedPassInfo) validateAutoEnroll(formats strfmt.Registry) error {

	if err := validate.Required("autoEnroll", "body", m.AutoEnroll); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedPassInfo) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedPassInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedPassInfo) validateDisplayOrder(formats strfmt.Registry) error {

	if err := validate.Required("displayOrder", "body", m.DisplayOrder); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedPassInfo) validateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("language", "body", m.Language); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedPassInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedPassInfo) validatePassItemID(formats strfmt.Registry) error {

	if err := validate.Required("passItemId", "body", m.PassItemID); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedPassInfo) validateSeasonID(formats strfmt.Registry) error {

	if err := validate.Required("seasonId", "body", m.SeasonID); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedPassInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *LocalizedPassInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *LocalizedPassInfo) UnmarshalBinary(b []byte) error {
	var res LocalizedPassInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

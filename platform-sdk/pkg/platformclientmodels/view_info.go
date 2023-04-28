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

// ViewInfo View info
//
// swagger:model View info.
type ViewInfo struct {

	// view created time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// description info
	Description string `json:"description,omitempty"`

	// display order
	// Required: true
	// Format: int32
	DisplayOrder *int32 `json:"displayOrder"`

	// localext
	LocalExt interface{} `json:"localExt,omitempty"`

	// long description info
	LongDescription string `json:"longDescription,omitempty"`

	// view name
	// Required: true
	Name *string `json:"name"`

	// view namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// title info
	// Required: true
	Title *string `json:"title"`

	// view updated time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// view id
	// Required: true
	ViewID *string `json:"viewId"`
}

// Validate validates this View info
func (m *ViewInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayOrder(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateViewID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ViewInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ViewInfo) validateDisplayOrder(formats strfmt.Registry) error {

	if err := validate.Required("displayOrder", "body", m.DisplayOrder); err != nil {
		return err
	}

	return nil
}

func (m *ViewInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ViewInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ViewInfo) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *ViewInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ViewInfo) validateViewID(formats strfmt.Registry) error {

	if err := validate.Required("viewId", "body", m.ViewID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ViewInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ViewInfo) UnmarshalBinary(b []byte) error {
	var res ViewInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

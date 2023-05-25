// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIImageListItem Api image list item
//
// swagger:model Api image list item.
type APIImageListItem struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// isprotected
	// Required: true
	IsProtected *bool `json:"isProtected"`

	// name
	// Required: true
	Name *string `json:"name"`

	// referencingfleets
	// Required: true
	// Format: int32
	ReferencingFleets *int32 `json:"referencingFleets"`

	// sizeinbyte
	// Required: true
	// Format: int64
	SizeInByte *int64 `json:"sizeInByte"`

	// status
	// Required: true
	Status *string `json:"status"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// uploadedat
	// Required: true
	// Format: date-time
	UploadedAt strfmt.DateTime `json:"uploadedAt"`

	// uploadedby
	// Required: true
	UploadedBy *string `json:"uploadedBy"`
}

// Validate validates this Api image list item
func (m *APIImageListItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsProtected(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReferencingFleets(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSizeInByte(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUploadedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUploadedBy(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIImageListItem) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIImageListItem) validateIsProtected(formats strfmt.Registry) error {

	if err := validate.Required("isProtected", "body", m.IsProtected); err != nil {
		return err
	}

	return nil
}

func (m *APIImageListItem) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIImageListItem) validateReferencingFleets(formats strfmt.Registry) error {

	if err := validate.Required("referencingFleets", "body", m.ReferencingFleets); err != nil {
		return err
	}

	return nil
}

func (m *APIImageListItem) validateSizeInByte(formats strfmt.Registry) error {

	if err := validate.Required("sizeInByte", "body", m.SizeInByte); err != nil {
		return err
	}

	return nil
}

func (m *APIImageListItem) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *APIImageListItem) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *APIImageListItem) validateUploadedAt(formats strfmt.Registry) error {

	if err := validate.Required("uploadedAt", "body", strfmt.DateTime(m.UploadedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("uploadedAt", "body", "date-time", m.UploadedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *APIImageListItem) validateUploadedBy(formats strfmt.Registry) error {

	if err := validate.Required("uploadedBy", "body", m.UploadedBy); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIImageListItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIImageListItem) UnmarshalBinary(b []byte) error {
	var res APIImageListItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

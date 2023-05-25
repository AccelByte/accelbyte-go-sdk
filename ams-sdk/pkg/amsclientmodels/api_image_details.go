// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIImageDetails Api image details
//
// swagger:model Api image details.
type APIImageDetails struct {

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
	ReferencingFleets []*APIReferencingFleet `json:"referencingFleets"`

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

// Validate validates this Api image details
func (m *APIImageDetails) Validate(formats strfmt.Registry) error {
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

func (m *APIImageDetails) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDetails) validateIsProtected(formats strfmt.Registry) error {

	if err := validate.Required("isProtected", "body", m.IsProtected); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDetails) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDetails) validateReferencingFleets(formats strfmt.Registry) error {

	if err := validate.Required("referencingFleets", "body", m.ReferencingFleets); err != nil {
		return err
	}

	for i := 0; i < len(m.ReferencingFleets); i++ {
		if swag.IsZero(m.ReferencingFleets[i]) { // not required
			continue
		}

		if m.ReferencingFleets[i] != nil {
			if err := m.ReferencingFleets[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("referencingFleets" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *APIImageDetails) validateSizeInByte(formats strfmt.Registry) error {

	if err := validate.Required("sizeInByte", "body", m.SizeInByte); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDetails) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDetails) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDetails) validateUploadedAt(formats strfmt.Registry) error {

	if err := validate.Required("uploadedAt", "body", strfmt.DateTime(m.UploadedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("uploadedAt", "body", "date-time", m.UploadedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDetails) validateUploadedBy(formats strfmt.Registry) error {

	if err := validate.Required("uploadedBy", "body", m.UploadedBy); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIImageDetails) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIImageDetails) UnmarshalBinary(b []byte) error {
	var res APIImageDetails
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

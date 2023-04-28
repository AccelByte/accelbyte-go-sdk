// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiAdminReasonResponse Restapi admin reason response
//
// swagger:model Restapi admin reason response.
type RestapiAdminReasonResponse struct {

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// description
	// Required: true
	Description *string `json:"description"`

	// groups
	Groups []*RestapiPublicReasonGroupResponse `json:"groups,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// title
	// Required: true
	Title *string `json:"title"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Restapi admin reason response
func (m *RestapiAdminReasonResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiAdminReasonResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *RestapiAdminReasonResponse) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *RestapiAdminReasonResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiAdminReasonResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *RestapiAdminReasonResponse) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *RestapiAdminReasonResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiAdminReasonResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiAdminReasonResponse) UnmarshalBinary(b []byte) error {
	var res RestapiAdminReasonResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

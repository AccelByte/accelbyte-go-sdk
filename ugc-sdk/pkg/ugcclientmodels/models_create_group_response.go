// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreateGroupResponse Models create group response
//
// swagger:model Models create group response.
type ModelsCreateGroupResponse struct {

	// contents
	// Required: true
	Contents []string `json:"contents"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// parentnamespace
	// Required: true
	ParentNamespace *string `json:"parentNamespace"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models create group response
func (m *ModelsCreateGroupResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContents(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParentNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateGroupResponse) validateContents(formats strfmt.Registry) error {

	if err := validate.Required("contents", "body", m.Contents); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupResponse) validateParentNamespace(formats strfmt.Registry) error {

	if err := validate.Required("parentNamespace", "body", m.ParentNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateGroupResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateGroupResponse) UnmarshalBinary(b []byte) error {
	var res ModelsCreateGroupResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetImageLimitResponseData Models get image limit response data
//
// swagger:model Models get image limit response data.
type ModelsGetImageLimitResponseData struct {

	// image_count
	// Required: true
	// Format: int32
	ImageCount *int32 `json:"image_count"`

	// image_limit
	// Required: true
	// Format: int32
	ImageLimit *int32 `json:"image_limit"`

	// non_persistent_image_number
	// Required: true
	// Format: int32
	NonPersistentImageNumber *int32 `json:"non_persistent_image_number"`

	// non_persistent_image_used_in_deployment_number
	// Required: true
	// Format: int32
	NonPersistentImageUsedInDeploymentNumber *int32 `json:"non_persistent_image_used_in_deployment_number"`
}

// Validate validates this Models get image limit response data
func (m *ModelsGetImageLimitResponseData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateImageCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNonPersistentImageNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNonPersistentImageUsedInDeploymentNumber(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetImageLimitResponseData) validateImageCount(formats strfmt.Registry) error {

	if err := validate.Required("image_count", "body", m.ImageCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetImageLimitResponseData) validateImageLimit(formats strfmt.Registry) error {

	if err := validate.Required("image_limit", "body", m.ImageLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetImageLimitResponseData) validateNonPersistentImageNumber(formats strfmt.Registry) error {

	if err := validate.Required("non_persistent_image_number", "body", m.NonPersistentImageNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetImageLimitResponseData) validateNonPersistentImageUsedInDeploymentNumber(formats strfmt.Registry) error {

	if err := validate.Required("non_persistent_image_used_in_deployment_number", "body", m.NonPersistentImageUsedInDeploymentNumber); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetImageLimitResponseData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetImageLimitResponseData) UnmarshalBinary(b []byte) error {
	var res ModelsGetImageLimitResponseData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

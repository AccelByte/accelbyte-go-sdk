// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAdminDeleteProfanityFilterRequest Models admin delete profanity filter request
//
// swagger:model Models admin delete profanity filter request.
type ModelsAdminDeleteProfanityFilterRequest struct {

	// filter
	// Required: true
	Filter *string `json:"filter"`
}

// Validate validates this Models admin delete profanity filter request
func (m *ModelsAdminDeleteProfanityFilterRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFilter(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminDeleteProfanityFilterRequest) validateFilter(formats strfmt.Registry) error {

	if err := validate.Required("filter", "body", m.Filter); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminDeleteProfanityFilterRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminDeleteProfanityFilterRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminDeleteProfanityFilterRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

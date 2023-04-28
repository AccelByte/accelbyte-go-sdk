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

// ModelsAdminAddProfanityFilterIntoListRequest Models admin add profanity filter into list request
//
// swagger:model Models admin add profanity filter into list request.
type ModelsAdminAddProfanityFilterIntoListRequest struct {

	// filter
	// Required: true
	Filter *string `json:"filter"`

	// note
	// Required: true
	Note *string `json:"note"`
}

// Validate validates this Models admin add profanity filter into list request
func (m *ModelsAdminAddProfanityFilterIntoListRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFilter(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNote(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminAddProfanityFilterIntoListRequest) validateFilter(formats strfmt.Registry) error {

	if err := validate.Required("filter", "body", m.Filter); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminAddProfanityFilterIntoListRequest) validateNote(formats strfmt.Registry) error {

	if err := validate.Required("note", "body", m.Note); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminAddProfanityFilterIntoListRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminAddProfanityFilterIntoListRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminAddProfanityFilterIntoListRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

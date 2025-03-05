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

// APIImageUpdate Api image update
//
// swagger:model Api image update.
type APIImageUpdate struct {

	// addedtags
	// Required: true
	AddedTags []string `json:"addedTags"`

	// isprotected
	IsProtected bool `json:"isProtected"`

	// name
	Name string `json:"name,omitempty"`

	// removedtags
	// Required: true
	RemovedTags []string `json:"removedTags"`
}

// Validate validates this Api image update
func (m *APIImageUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAddedTags(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRemovedTags(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIImageUpdate) validateAddedTags(formats strfmt.Registry) error {

	if err := validate.Required("addedTags", "body", m.AddedTags); err != nil {
		return err
	}

	return nil
}

func (m *APIImageUpdate) validateRemovedTags(formats strfmt.Registry) error {

	if err := validate.Required("removedTags", "body", m.RemovedTags); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIImageUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIImageUpdate) UnmarshalBinary(b []byte) error {
	var res APIImageUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

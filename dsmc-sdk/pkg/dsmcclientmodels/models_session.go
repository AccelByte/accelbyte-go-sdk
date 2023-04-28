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

// ModelsSession Models session
//
// swagger:model Models session.
type ModelsSession struct {

	// server
	// Required: true
	Server *ModelsServer `json:"Server"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// provider
	// Required: true
	Provider *string `json:"provider"`

	// region
	// Required: true
	Region *string `json:"region"`
}

// Validate validates this Models session
func (m *ModelsSession) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateServer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProvider(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSession) validateServer(formats strfmt.Registry) error {

	if err := validate.Required("Server", "body", m.Server); err != nil {
		return err
	}

	if m.Server != nil {
		if err := m.Server.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("Server")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsSession) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSession) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSession) validateProvider(formats strfmt.Registry) error {

	if err := validate.Required("provider", "body", m.Provider); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSession) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSession) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSession) UnmarshalBinary(b []byte) error {
	var res ModelsSession
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

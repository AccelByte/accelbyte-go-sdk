// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUserKeyRequest Models user key request
//
// swagger:model Models user key request.
type ModelsUserKeyRequest struct {

	// Keys of the record
	// Required: true
	Keys []string `json:"keys"`

	// User ID who owns the record
	// Required: true
	UserID *string `json:"user_id"`
}

// Validate validates this Models user key request
func (m *ModelsUserKeyRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKeys(formats); err != nil {
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

func (m *ModelsUserKeyRequest) validateKeys(formats strfmt.Registry) error {

	if err := validate.Required("keys", "body", m.Keys); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserKeyRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserKeyRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserKeyRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUserKeyRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

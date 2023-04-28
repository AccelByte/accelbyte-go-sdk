// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserZipCodeUpdate User zip code update
//
// swagger:model User zip code update.
type UserZipCodeUpdate struct {

	// zip code, accept alphabet and numeric string default
	// Required: true
	ZipCode *string `json:"zipCode"`
}

// Validate validates this User zip code update
func (m *UserZipCodeUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateZipCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UserZipCodeUpdate) validateZipCode(formats strfmt.Registry) error {

	if err := validate.Required("zipCode", "body", m.ZipCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserZipCodeUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserZipCodeUpdate) UnmarshalBinary(b []byte) error {
	var res UserZipCodeUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

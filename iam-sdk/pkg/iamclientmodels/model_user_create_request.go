// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserCreateRequest Model user create request
//
// swagger:model Model user create request.
type ModelUserCreateRequest struct {

	// authtype
	// Required: true
	AuthType *string `json:"AuthType"`

	// country
	// Required: true
	Country *string `json:"Country"`

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// loginid
	// Required: true
	LoginID *string `json:"LoginId"`

	// password
	// Required: true
	Password *string `json:"Password"`

	// passwordmd5sum
	PasswordMD5Sum string `json:"PasswordMD5Sum,omitempty"`
}

// Validate validates this Model user create request
func (m *ModelUserCreateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountry(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoginID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserCreateRequest) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("AuthType", "body", m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateRequest) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("Country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateRequest) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateRequest) validateLoginID(formats strfmt.Registry) error {

	if err := validate.Required("LoginId", "body", m.LoginID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateRequest) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("Password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserCreateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserCreateRequest) UnmarshalBinary(b []byte) error {
	var res ModelUserCreateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

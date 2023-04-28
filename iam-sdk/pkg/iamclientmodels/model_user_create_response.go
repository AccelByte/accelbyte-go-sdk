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

// ModelUserCreateResponse Model user create response
//
// swagger:model Model user create response.
type ModelUserCreateResponse struct {

	// authtype
	// Required: true
	AuthType *string `json:"AuthType"`

	// country
	// Required: true
	Country *string `json:"Country"`

	// dateofbirth
	// Required: true
	// Format: date-time
	DateOfBirth strfmt.DateTime `json:"DateOfBirth"`

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// loginid
	// Required: true
	LoginID *string `json:"LoginId"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// userid
	// Required: true
	UserID *string `json:"UserId"`
}

// Validate validates this Model user create response
func (m *ModelUserCreateResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountry(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDateOfBirth(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoginID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ModelUserCreateResponse) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("AuthType", "body", m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponse) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("Country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponse) validateDateOfBirth(formats strfmt.Registry) error {

	if err := validate.Required("DateOfBirth", "body", strfmt.DateTime(m.DateOfBirth)); err != nil {
		return err
	}

	if err := validate.FormatOf("DateOfBirth", "body", "date-time", m.DateOfBirth.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponse) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponse) validateLoginID(formats strfmt.Registry) error {

	if err := validate.Required("LoginId", "body", m.LoginID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserCreateResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserCreateResponse) UnmarshalBinary(b []byte) error {
	var res ModelUserCreateResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

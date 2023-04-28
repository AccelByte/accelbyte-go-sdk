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

// ModelUserCreateResponseV3 Model user create response V3
//
// swagger:model Model user create response V3.
type ModelUserCreateResponseV3 struct {

	// authtype
	// Required: true
	AuthType *string `json:"authType"`

	// country
	// Required: true
	Country *string `json:"country"`

	// dateofbirth
	// Required: true
	// Format: date-time
	DateOfBirth strfmt.DateTime `json:"dateOfBirth"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model user create response V3
func (m *ModelUserCreateResponseV3) Validate(formats strfmt.Registry) error {
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
	if err := m.validateEmailAddress(formats); err != nil {
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

func (m *ModelUserCreateResponseV3) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("authType", "body", m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponseV3) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponseV3) validateDateOfBirth(formats strfmt.Registry) error {

	if err := validate.Required("dateOfBirth", "body", strfmt.DateTime(m.DateOfBirth)); err != nil {
		return err
	}

	if err := validate.FormatOf("dateOfBirth", "body", "date-time", m.DateOfBirth.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponseV3) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponseV3) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponseV3) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateResponseV3) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserCreateResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserCreateResponseV3) UnmarshalBinary(b []byte) error {
	var res ModelUserCreateResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

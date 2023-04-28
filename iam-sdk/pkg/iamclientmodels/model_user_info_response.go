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

// ModelUserInfoResponse Model user info response
//
// swagger:model Model user info response.
type ModelUserInfoResponse struct {

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

// Validate validates this Model user info response
func (m *ModelUserInfoResponse) Validate(formats strfmt.Registry) error {
	var res []error

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

func (m *ModelUserInfoResponse) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInfoResponse) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInfoResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInfoResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserInfoResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserInfoResponse) UnmarshalBinary(b []byte) error {
	var res ModelUserInfoResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

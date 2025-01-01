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

// ModelPublicOpenIDUserInfoResponse Model public open ID user info response
//
// swagger:model Model public open ID user info response.
type ModelPublicOpenIDUserInfoResponse struct {

	// email
	// Required: true
	Email *string `json:"email"`

	// name
	// Required: true
	Name *string `json:"name"`

	// picture
	// Required: true
	Picture *string `json:"picture"`

	// sub
	// Required: true
	Sub *string `json:"sub"`
}

// Validate validates this Model public open ID user info response
func (m *ModelPublicOpenIDUserInfoResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmail(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePicture(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSub(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPublicOpenIDUserInfoResponse) validateEmail(formats strfmt.Registry) error {

	if err := validate.Required("email", "body", m.Email); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicOpenIDUserInfoResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicOpenIDUserInfoResponse) validatePicture(formats strfmt.Registry) error {

	if err := validate.Required("picture", "body", m.Picture); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicOpenIDUserInfoResponse) validateSub(formats strfmt.Registry) error {

	if err := validate.Required("sub", "body", m.Sub); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPublicOpenIDUserInfoResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPublicOpenIDUserInfoResponse) UnmarshalBinary(b []byte) error {
	var res ModelPublicOpenIDUserInfoResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// ModelEmailUpdateRequestV4 Model email update request V4
//
// swagger:model Model email update request V4.
type ModelEmailUpdateRequestV4 struct {

	// code
	// Required: true
	Code *string `json:"code"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`
}

// Validate validates this Model email update request V4
func (m *ModelEmailUpdateRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelEmailUpdateRequestV4) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ModelEmailUpdateRequestV4) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelEmailUpdateRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelEmailUpdateRequestV4) UnmarshalBinary(b []byte) error {
	var res ModelEmailUpdateRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

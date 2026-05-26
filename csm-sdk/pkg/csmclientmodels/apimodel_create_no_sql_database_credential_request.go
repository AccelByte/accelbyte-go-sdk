// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelCreateNoSQLDatabaseCredentialRequest Apimodel create no SQL database credential request
//
// swagger:model Apimodel create no SQL database credential request.
type ApimodelCreateNoSQLDatabaseCredentialRequest struct {

	// acknowledgements
	// Required: true
	Acknowledgements *ApimodelNoSQLDatabaseAcknowledgements `json:"acknowledgements"`

	// password
	// Required: true
	Password *string `json:"password"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Apimodel create no SQL database credential request
func (m *ApimodelCreateNoSQLDatabaseCredentialRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcknowledgements(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUsername(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelCreateNoSQLDatabaseCredentialRequest) validateAcknowledgements(formats strfmt.Registry) error {

	if err := validate.Required("acknowledgements", "body", m.Acknowledgements); err != nil {
		return err
	}

	if m.Acknowledgements != nil {
		if err := m.Acknowledgements.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("acknowledgements")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelCreateNoSQLDatabaseCredentialRequest) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelCreateNoSQLDatabaseCredentialRequest) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCreateNoSQLDatabaseCredentialRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCreateNoSQLDatabaseCredentialRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelCreateNoSQLDatabaseCredentialRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

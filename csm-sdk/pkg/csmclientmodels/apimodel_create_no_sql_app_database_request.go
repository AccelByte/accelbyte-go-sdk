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

// ApimodelCreateNoSQLAppDatabaseRequest Apimodel create no SQL app database request
//
// swagger:model Apimodel create no SQL app database request.
type ApimodelCreateNoSQLAppDatabaseRequest struct {

	// acknowledgements
	// Required: true
	Acknowledgements *ApimodelNoSQLDatabaseAcknowledgements `json:"acknowledgements"`

	// dbname
	// Required: true
	DbName *string `json:"dbName"`

	// password
	// Required: true
	Password *string `json:"password"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Apimodel create no SQL app database request
func (m *ApimodelCreateNoSQLAppDatabaseRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcknowledgements(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDbName(formats); err != nil {
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

func (m *ApimodelCreateNoSQLAppDatabaseRequest) validateAcknowledgements(formats strfmt.Registry) error {

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

func (m *ApimodelCreateNoSQLAppDatabaseRequest) validateDbName(formats strfmt.Registry) error {

	if err := validate.Required("dbName", "body", m.DbName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelCreateNoSQLAppDatabaseRequest) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelCreateNoSQLAppDatabaseRequest) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCreateNoSQLAppDatabaseRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCreateNoSQLAppDatabaseRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelCreateNoSQLAppDatabaseRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

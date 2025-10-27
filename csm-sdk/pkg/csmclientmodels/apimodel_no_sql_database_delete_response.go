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

// ApimodelNoSQLDatabaseDeleteResponse Apimodel no SQL database delete response
//
// swagger:model Apimodel no SQL database delete response.
type ApimodelNoSQLDatabaseDeleteResponse struct {

	// dbid
	// Required: true
	DbID *string `json:"dbId"`

	// dbname
	// Required: true
	DbName *string `json:"dbName"`
}

// Validate validates this Apimodel no SQL database delete response
func (m *ApimodelNoSQLDatabaseDeleteResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDbID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDbName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelNoSQLDatabaseDeleteResponse) validateDbID(formats strfmt.Registry) error {

	if err := validate.Required("dbId", "body", m.DbID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLDatabaseDeleteResponse) validateDbName(formats strfmt.Registry) error {

	if err := validate.Required("dbName", "body", m.DbName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelNoSQLDatabaseDeleteResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelNoSQLDatabaseDeleteResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelNoSQLDatabaseDeleteResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

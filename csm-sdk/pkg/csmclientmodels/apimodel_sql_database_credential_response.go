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

// ApimodelSQLDatabaseCredentialResponse Apimodel SQL database credential response
//
// swagger:model Apimodel SQL database credential response.
type ApimodelSQLDatabaseCredentialResponse struct {

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// owner
	// Required: true
	Owner *string `json:"owner"`

	// recommendedmaxage
	// Required: true
	// Format: int32
	RecommendedMaxAge *int32 `json:"recommendedMaxAge"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Apimodel SQL database credential response
func (m *ApimodelSQLDatabaseCredentialResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOwner(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRecommendedMaxAge(formats); err != nil {
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

func (m *ApimodelSQLDatabaseCredentialResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseCredentialResponse) validateOwner(formats strfmt.Registry) error {

	if err := validate.Required("owner", "body", m.Owner); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseCredentialResponse) validateRecommendedMaxAge(formats strfmt.Registry) error {

	if err := validate.Required("recommendedMaxAge", "body", m.RecommendedMaxAge); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseCredentialResponse) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelSQLDatabaseCredentialResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelSQLDatabaseCredentialResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelSQLDatabaseCredentialResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

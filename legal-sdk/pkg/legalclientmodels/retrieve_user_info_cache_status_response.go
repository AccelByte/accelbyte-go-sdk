// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RetrieveUserInfoCacheStatusResponse Retrieve user info cache status response
//
// swagger:model Retrieve user info cache status response.
type RetrieveUserInfoCacheStatusResponse struct {

	// lastupdatedat
	// Required: true
	// Format: date-time
	LastUpdatedAt strfmt.DateTime `json:"lastUpdatedAt"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Retrieve user info cache status response
func (m *RetrieveUserInfoCacheStatusResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLastUpdatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrieveUserInfoCacheStatusResponse) validateLastUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("lastUpdatedAt", "body", strfmt.DateTime(m.LastUpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("lastUpdatedAt", "body", "date-time", m.LastUpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveUserInfoCacheStatusResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveUserInfoCacheStatusResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveUserInfoCacheStatusResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveUserInfoCacheStatusResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

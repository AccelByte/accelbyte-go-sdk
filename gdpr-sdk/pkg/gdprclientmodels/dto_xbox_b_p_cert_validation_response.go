// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// DTOXboxBPCertValidationResponse Dto xbox BP cert validation response
//
// swagger:model Dto xbox BP cert validation response.
type DTOXboxBPCertValidationResponse struct {

	// expirationdate
	// Required: true
	// Format: int64
	ExpirationDate *int64 `json:"expirationDate"`

	// expired
	// Required: true
	Expired *bool `json:"expired"`
}

// Validate validates this Dto xbox BP cert validation response
func (m *DTOXboxBPCertValidationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExpirationDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpired(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DTOXboxBPCertValidationResponse) validateExpirationDate(formats strfmt.Registry) error {

	if err := validate.Required("expirationDate", "body", m.ExpirationDate); err != nil {
		return err
	}

	return nil
}

func (m *DTOXboxBPCertValidationResponse) validateExpired(formats strfmt.Registry) error {

	if err := validate.Required("expired", "body", m.Expired); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOXboxBPCertValidationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOXboxBPCertValidationResponse) UnmarshalBinary(b []byte) error {
	var res DTOXboxBPCertValidationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

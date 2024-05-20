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

// DTOPlatformAccountClosureClientRequest Dto platform account closure client request
//
// swagger:model Dto platform account closure client request.
type DTOPlatformAccountClosureClientRequest struct {

	// clientid
	// Required: true
	ClientID *string `json:"clientId"`

	// secret
	// Required: true
	Secret *string `json:"secret"`
}

// Validate validates this Dto platform account closure client request
func (m *DTOPlatformAccountClosureClientRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSecret(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DTOPlatformAccountClosureClientRequest) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("clientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *DTOPlatformAccountClosureClientRequest) validateSecret(formats strfmt.Registry) error {

	if err := validate.Required("secret", "body", m.Secret); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOPlatformAccountClosureClientRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOPlatformAccountClosureClientRequest) UnmarshalBinary(b []byte) error {
	var res DTOPlatformAccountClosureClientRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

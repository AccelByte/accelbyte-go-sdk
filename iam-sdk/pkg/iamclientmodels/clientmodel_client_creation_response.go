// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ClientmodelClientCreationResponse Clientmodel client creation response
//
// swagger:model Clientmodel client creation response.
type ClientmodelClientCreationResponse struct {

	// clientid
	// Required: true
	ClientID *string `json:"ClientId"`

	// clientname
	// Required: true
	ClientName *string `json:"ClientName"`

	// clientpermissions
	// Required: true
	ClientPermissions []*AccountcommonPermission `json:"ClientPermissions"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// redirecturi
	// Required: true
	RedirectURI *string `json:"RedirectUri"`

	// twofactorenabled
	// Required: true
	TwoFactorEnabled *bool `json:"TwoFactorEnabled"`
}

// Validate validates this Clientmodel client creation response
func (m *ClientmodelClientCreationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientPermissions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedirectURI(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTwoFactorEnabled(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelClientCreationResponse) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("ClientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationResponse) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("ClientName", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationResponse) validateClientPermissions(formats strfmt.Registry) error {

	if err := validate.Required("ClientPermissions", "body", m.ClientPermissions); err != nil {
		return err
	}

	for i := 0; i < len(m.ClientPermissions); i++ {
		if swag.IsZero(m.ClientPermissions[i]) { // not required
			continue
		}

		if m.ClientPermissions[i] != nil {
			if err := m.ClientPermissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("ClientPermissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ClientmodelClientCreationResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationResponse) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("RedirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationResponse) validateTwoFactorEnabled(formats strfmt.Registry) error {

	if err := validate.Required("TwoFactorEnabled", "body", m.TwoFactorEnabled); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientCreationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientCreationResponse) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientCreationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

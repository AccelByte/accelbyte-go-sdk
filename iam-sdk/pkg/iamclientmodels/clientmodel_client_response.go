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

// ClientmodelClientResponse Clientmodel client response
//
// swagger:model Clientmodel client response.
type ClientmodelClientResponse struct {

	// clientid
	// Required: true
	ClientID *string `json:"ClientId"`

	// clientname
	// Required: true
	ClientName *string `json:"ClientName"`

	// clientpermissions
	// Required: true
	ClientPermissions []*AccountcommonPermission `json:"ClientPermissions"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

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

// Validate validates this Clientmodel client response
func (m *ClientmodelClientResponse) Validate(formats strfmt.Registry) error {
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
	if err := m.validateCreatedAt(formats); err != nil {
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

func (m *ClientmodelClientResponse) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("ClientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientResponse) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("ClientName", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientResponse) validateClientPermissions(formats strfmt.Registry) error {

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

func (m *ClientmodelClientResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientResponse) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("RedirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientResponse) validateTwoFactorEnabled(formats strfmt.Registry) error {

	if err := validate.Required("TwoFactorEnabled", "body", m.TwoFactorEnabled); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientResponse) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

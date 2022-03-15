// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ClientmodelClientCreationV3Request clientmodel client creation v3 request
//
// swagger:model clientmodel.ClientCreationV3Request
type ClientmodelClientCreationV3Request struct {

	// audiences
	// Required: true
	Audiences []string `json:"audiences"`

	// base Uri
	// Required: true
	BaseURI *string `json:"baseUri"`

	// client Id
	// Required: true
	ClientID *string `json:"clientId"`

	// client name
	// Required: true
	ClientName *string `json:"clientName"`

	// client permissions
	// Required: true
	ClientPermissions []*AccountcommonPermissionV3 `json:"clientPermissions"`

	// deletable
	Deletable bool `json:"deletable"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// oauth client type
	// Required: true
	OauthClientType *string `json:"oauthClientType"`

	// redirect Uri
	// Required: true
	RedirectURI *string `json:"redirectUri"`

	// secret
	// Required: true
	Secret *string `json:"secret"`
}

// Validate validates this clientmodel client creation v3 request
func (m *ClientmodelClientCreationV3Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAudiences(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateBaseURI(formats); err != nil {
		res = append(res, err)
	}

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

	if err := m.validateOauthClientType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRedirectURI(formats); err != nil {
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

func (m *ClientmodelClientCreationV3Request) validateAudiences(formats strfmt.Registry) error {

	if err := validate.Required("audiences", "body", m.Audiences); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateBaseURI(formats strfmt.Registry) error {

	if err := validate.Required("baseUri", "body", m.BaseURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("clientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("clientName", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateClientPermissions(formats strfmt.Registry) error {

	if err := validate.Required("clientPermissions", "body", m.ClientPermissions); err != nil {
		return err
	}

	for i := 0; i < len(m.ClientPermissions); i++ {
		if swag.IsZero(m.ClientPermissions[i]) { // not required
			continue
		}

		if m.ClientPermissions[i] != nil {
			if err := m.ClientPermissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("clientPermissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateOauthClientType(formats strfmt.Registry) error {

	if err := validate.Required("oauthClientType", "body", m.OauthClientType); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("redirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientCreationV3Request) validateSecret(formats strfmt.Registry) error {

	if err := validate.Required("secret", "body", m.Secret); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientCreationV3Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientCreationV3Request) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientCreationV3Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

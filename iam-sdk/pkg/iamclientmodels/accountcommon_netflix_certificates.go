// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountcommonNetflixCertificates accountcommon netflix certificates
//
// swagger:model accountcommon.NetflixCertificates
type AccountcommonNetflixCertificates struct {

	// encrypted private key
	// Required: true
	EncryptedPrivateKey *string `json:"encryptedPrivateKey"`

	// public certificate
	// Required: true
	PublicCertificate *string `json:"publicCertificate"`

	// root certificate
	// Required: true
	RootCertificate *string `json:"rootCertificate"`
}

// Validate validates this accountcommon netflix certificates
func (m *AccountcommonNetflixCertificates) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEncryptedPrivateKey(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePublicCertificate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRootCertificate(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonNetflixCertificates) validateEncryptedPrivateKey(formats strfmt.Registry) error {

	if err := validate.Required("encryptedPrivateKey", "body", m.EncryptedPrivateKey); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonNetflixCertificates) validatePublicCertificate(formats strfmt.Registry) error {

	if err := validate.Required("publicCertificate", "body", m.PublicCertificate); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonNetflixCertificates) validateRootCertificate(formats strfmt.Registry) error {

	if err := validate.Required("rootCertificate", "body", m.RootCertificate); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonNetflixCertificates) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonNetflixCertificates) UnmarshalBinary(b []byte) error {
	var res AccountcommonNetflixCertificates
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

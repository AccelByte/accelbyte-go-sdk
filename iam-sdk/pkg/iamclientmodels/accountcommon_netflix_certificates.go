// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountcommonNetflixCertificates Accountcommon netflix certificates
//
// swagger:model Accountcommon netflix certificates.
type AccountcommonNetflixCertificates struct {

	// encryptedprivatekey
	// Required: true
	EncryptedPrivateKey *string `json:"encryptedPrivateKey"`

	// encryptedprivatekeyname
	// Required: true
	EncryptedPrivateKeyName *string `json:"encryptedPrivateKeyName"`

	// publiccertificate
	// Required: true
	PublicCertificate *string `json:"publicCertificate"`

	// publiccertificatename
	// Required: true
	PublicCertificateName *string `json:"publicCertificateName"`

	// rootcertificate
	// Required: true
	RootCertificate *string `json:"rootCertificate"`

	// rootcertificatename
	// Required: true
	RootCertificateName *string `json:"rootCertificateName"`
}

// Validate validates this Accountcommon netflix certificates
func (m *AccountcommonNetflixCertificates) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEncryptedPrivateKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEncryptedPrivateKeyName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePublicCertificate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePublicCertificateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRootCertificate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRootCertificateName(formats); err != nil {
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

func (m *AccountcommonNetflixCertificates) validateEncryptedPrivateKeyName(formats strfmt.Registry) error {

	if err := validate.Required("encryptedPrivateKeyName", "body", m.EncryptedPrivateKeyName); err != nil {
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

func (m *AccountcommonNetflixCertificates) validatePublicCertificateName(formats strfmt.Registry) error {

	if err := validate.Required("publicCertificateName", "body", m.PublicCertificateName); err != nil {
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

func (m *AccountcommonNetflixCertificates) validateRootCertificateName(formats strfmt.Registry) error {

	if err := validate.Required("rootCertificateName", "body", m.RootCertificateName); err != nil {
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

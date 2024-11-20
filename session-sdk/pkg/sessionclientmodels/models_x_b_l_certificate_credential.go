// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsXBLCertificateCredential Models XBL certificate credential
//
// swagger:model Models XBL certificate credential.
type ModelsXBLCertificateCredential struct {

	// businesspartnercertfilebytes
	// Required: true
	BusinessPartnerCertFileBytes *string `json:"businessPartnerCertFileBytes"`

	// businesspartnercertfilename
	// Required: true
	BusinessPartnerCertFileName *string `json:"businessPartnerCertFileName"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// createdby
	// Required: true
	CreatedBy *string `json:"createdBy"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Models XBL certificate credential
func (m *ModelsXBLCertificateCredential) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBusinessPartnerCertFileBytes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBusinessPartnerCertFileName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsXBLCertificateCredential) validateBusinessPartnerCertFileBytes(formats strfmt.Registry) error {

	if err := validate.Required("businessPartnerCertFileBytes", "body", m.BusinessPartnerCertFileBytes); err != nil {
		return err
	}

	return nil
}

func (m *ModelsXBLCertificateCredential) validateBusinessPartnerCertFileName(formats strfmt.Registry) error {

	if err := validate.Required("businessPartnerCertFileName", "body", m.BusinessPartnerCertFileName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsXBLCertificateCredential) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsXBLCertificateCredential) validateCreatedBy(formats strfmt.Registry) error {

	if err := validate.Required("createdBy", "body", m.CreatedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsXBLCertificateCredential) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsXBLCertificateCredential) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsXBLCertificateCredential) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsXBLCertificateCredential) UnmarshalBinary(b []byte) error {
	var res ModelsXBLCertificateCredential
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

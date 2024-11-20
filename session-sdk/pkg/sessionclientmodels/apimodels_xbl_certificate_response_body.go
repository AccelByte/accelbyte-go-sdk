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

// ApimodelsXblCertificateResponseBody Apimodels xbl certificate response body
//
// swagger:model Apimodels xbl certificate response body.
type ApimodelsXblCertificateResponseBody struct {

	// businesspartnercertfilebytes
	// Required: true
	BusinessPartnerCertFileBytes *string `json:"businessPartnerCertFileBytes"`

	// businesspartnercertfilename
	// Required: true
	BusinessPartnerCertFileName *string `json:"businessPartnerCertFileName"`

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

// Validate validates this Apimodels xbl certificate response body
func (m *ApimodelsXblCertificateResponseBody) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBusinessPartnerCertFileBytes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBusinessPartnerCertFileName(formats); err != nil {
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

func (m *ApimodelsXblCertificateResponseBody) validateBusinessPartnerCertFileBytes(formats strfmt.Registry) error {

	if err := validate.Required("businessPartnerCertFileBytes", "body", m.BusinessPartnerCertFileBytes); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXblCertificateResponseBody) validateBusinessPartnerCertFileName(formats strfmt.Registry) error {

	if err := validate.Required("businessPartnerCertFileName", "body", m.BusinessPartnerCertFileName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXblCertificateResponseBody) validateCreatedBy(formats strfmt.Registry) error {

	if err := validate.Required("createdBy", "body", m.CreatedBy); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXblCertificateResponseBody) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXblCertificateResponseBody) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXblCertificateResponseBody) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXblCertificateResponseBody) UnmarshalBinary(b []byte) error {
	var res ApimodelsXblCertificateResponseBody
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

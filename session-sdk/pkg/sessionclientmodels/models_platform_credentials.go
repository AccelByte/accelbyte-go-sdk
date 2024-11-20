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

// ModelsPlatformCredentials Models platform credentials
//
// swagger:model Models platform credentials.
type ModelsPlatformCredentials struct {

	// psn
	// Required: true
	Psn *ModelsPSNAppServerCredentials `json:"psn"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// xbox
	Xbox *ModelsXBLCertificateCredential `json:"xbox,omitempty"`
}

// Validate validates this Models platform credentials
func (m *ModelsPlatformCredentials) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePsn(formats); err != nil {
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

func (m *ModelsPlatformCredentials) validatePsn(formats strfmt.Registry) error {

	if err := validate.Required("psn", "body", m.Psn); err != nil {
		return err
	}

	if m.Psn != nil {
		if err := m.Psn.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("psn")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsPlatformCredentials) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlatformCredentials) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlatformCredentials) UnmarshalBinary(b []byte) error {
	var res ModelsPlatformCredentials
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

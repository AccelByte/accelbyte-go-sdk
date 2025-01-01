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

// DTOXboxBPCertValidationRequest Dto xbox BP cert validation request
//
// swagger:model Dto xbox BP cert validation request.
type DTOXboxBPCertValidationRequest struct {

	// bpcert
	// Required: true
	BpCert *string `json:"bpCert"`

	// password
	// Required: true
	Password *string `json:"password"`
}

// Validate validates this Dto xbox BP cert validation request
func (m *DTOXboxBPCertValidationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBpCert(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DTOXboxBPCertValidationRequest) validateBpCert(formats strfmt.Registry) error {

	if err := validate.Required("bpCert", "body", m.BpCert); err != nil {
		return err
	}

	return nil
}

func (m *DTOXboxBPCertValidationRequest) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOXboxBPCertValidationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOXboxBPCertValidationRequest) UnmarshalBinary(b []byte) error {
	var res DTOXboxBPCertValidationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

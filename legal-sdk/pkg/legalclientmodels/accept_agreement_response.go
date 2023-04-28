// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AcceptAgreementResponse Accept agreement response
//
// swagger:model Accept agreement response.
type AcceptAgreementResponse struct {

	// Eligibility Status after Accept Agreement
	// Required: true
	Comply *bool `json:"comply"`

	// extra information
	Ext interface{} `json:"ext,omitempty"`

	// DEPRECATED the name is not clear, changed with comply
	// Required: true
	Proceed *bool `json:"proceed"`
}

// Validate validates this Accept agreement response
func (m *AcceptAgreementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateComply(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProceed(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AcceptAgreementResponse) validateComply(formats strfmt.Registry) error {

	if err := validate.Required("comply", "body", m.Comply); err != nil {
		return err
	}

	return nil
}

func (m *AcceptAgreementResponse) validateProceed(formats strfmt.Registry) error {

	if err := validate.Required("proceed", "body", m.Proceed); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AcceptAgreementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AcceptAgreementResponse) UnmarshalBinary(b []byte) error {
	var res AcceptAgreementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

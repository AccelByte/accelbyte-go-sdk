// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PaymentDomainWhitelistConfigEdit Payment domain whitelist config edit
//
// swagger:model Payment domain whitelist config edit.
type PaymentDomainWhitelistConfigEdit struct {

	// domains
	// Required: true
	Domains []string `json:"domains"`
}

// Validate validates this Payment domain whitelist config edit
func (m *PaymentDomainWhitelistConfigEdit) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDomains(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentDomainWhitelistConfigEdit) validateDomains(formats strfmt.Registry) error {

	if err := validate.Required("domains", "body", m.Domains); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentDomainWhitelistConfigEdit) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentDomainWhitelistConfigEdit) UnmarshalBinary(b []byte) error {
	var res PaymentDomainWhitelistConfigEdit
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

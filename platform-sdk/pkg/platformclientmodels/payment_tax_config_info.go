// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// PaymentTaxConfigInfo Payment tax config info
//
// swagger:model Payment tax config info.
type PaymentTaxConfigInfo struct {

	// sandbox taxJar API token
	SandboxTaxJarAPIToken string `json:"sandboxTaxJarApiToken,omitempty"`

	// taxJar API token
	TaxJarAPIToken string `json:"taxJarApiToken,omitempty"`

	// if taxJar integration is enabled
	TaxJarEnabled bool `json:"taxJarEnabled"`

	// taxJar product codes mappings
	TaxJarProductCodesMapping map[string]string `json:"taxJarProductCodesMapping,omitempty"`
}

// Validate validates this Payment tax config info
func (m *PaymentTaxConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentTaxConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentTaxConfigInfo) UnmarshalBinary(b []byte) error {
	var res PaymentTaxConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

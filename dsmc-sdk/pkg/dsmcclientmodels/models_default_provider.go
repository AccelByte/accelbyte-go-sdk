// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDefaultProvider Models default provider
//
// swagger:model Models default provider.
type ModelsDefaultProvider struct {

	// provider_name
	// Required: true
	ProviderName *string `json:"provider_name"`
}

// Validate validates this Models default provider
func (m *ModelsDefaultProvider) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateProviderName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDefaultProvider) validateProviderName(formats strfmt.Registry) error {

	if err := validate.Required("provider_name", "body", m.ProviderName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDefaultProvider) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDefaultProvider) UnmarshalBinary(b []byte) error {
	var res ModelsDefaultProvider
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// CurrencyUpdate Currency update
//
// swagger:model Currency update.
type CurrencyUpdate struct {

	// Description, key is language, value is description max length is 255
	LocalizationDescriptions map[string]string `json:"localizationDescriptions,omitempty"`
}

// Validate validates this Currency update
func (m *CurrencyUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CurrencyUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CurrencyUpdate) UnmarshalBinary(b []byte) error {
	var res CurrencyUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

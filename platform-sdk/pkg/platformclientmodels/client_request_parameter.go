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

// ClientRequestParameter Client request parameter
//
// swagger:model Client request parameter.
type ClientRequestParameter struct {

	// currencycode
	CurrencyCode string `json:"currencyCode,omitempty"`

	// language
	Language string `json:"language,omitempty"`

	// price
	// Format: double
	Price float64 `json:"price,omitempty"`

	// region
	Region string `json:"region,omitempty"`
}

// Validate validates this Client request parameter
func (m *ClientRequestParameter) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ClientRequestParameter) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientRequestParameter) UnmarshalBinary(b []byte) error {
	var res ClientRequestParameter
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

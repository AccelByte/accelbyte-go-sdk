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

// CreditResult Credit result
//
// swagger:model Credit result.
type CreditResult struct {

	// creditrequest
	CreditRequest *CreditRequest `json:"creditRequest,omitempty"`

	// currencycode
	CurrencyCode string `json:"currencyCode,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Credit result
func (m *CreditResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreditResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreditResult) UnmarshalBinary(b []byte) error {
	var res CreditResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

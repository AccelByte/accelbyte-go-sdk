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

// AppleIAPRequest Apple IAP request
//
// swagger:model Apple IAP request.
type AppleIAPRequest struct {

	// The transaction identifier of the item that was purchased.
	// Required: true
	TransactionID *string `json:"transactionId"`
}

// Validate validates this Apple IAP request
func (m *AppleIAPRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTransactionID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AppleIAPRequest) validateTransactionID(formats strfmt.Registry) error {

	if err := validate.Required("transactionId", "body", m.TransactionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AppleIAPRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppleIAPRequest) UnmarshalBinary(b []byte) error {
	var res AppleIAPRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

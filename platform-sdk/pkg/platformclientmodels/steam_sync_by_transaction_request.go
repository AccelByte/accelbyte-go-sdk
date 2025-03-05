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

// SteamSyncByTransactionRequest Steam sync by transaction request
//
// swagger:model Steam sync by transaction request.
type SteamSyncByTransactionRequest struct {

	// Unique 64-bit ID for steam order
	// Required: true
	OrderID *string `json:"orderId"`
}

// Validate validates this Steam sync by transaction request
func (m *SteamSyncByTransactionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOrderID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SteamSyncByTransactionRequest) validateOrderID(formats strfmt.Registry) error {

	if err := validate.Required("orderId", "body", m.OrderID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SteamSyncByTransactionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamSyncByTransactionRequest) UnmarshalBinary(b []byte) error {
	var res SteamSyncByTransactionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// TicketSaleIncrementResult Ticket sale increment result
//
// swagger:model Ticket sale increment result.
type TicketSaleIncrementResult struct {

	// max sale count
	// Required: true
	// Format: int32
	MaxSaleCount *int32 `json:"maxSaleCount"`

	// operation result
	// Required: true
	Success *bool `json:"success"`
}

// Validate validates this Ticket sale increment result
func (m *TicketSaleIncrementResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxSaleCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TicketSaleIncrementResult) validateMaxSaleCount(formats strfmt.Registry) error {

	if err := validate.Required("maxSaleCount", "body", m.MaxSaleCount); err != nil {
		return err
	}

	return nil
}

func (m *TicketSaleIncrementResult) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TicketSaleIncrementResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TicketSaleIncrementResult) UnmarshalBinary(b []byte) error {
	var res TicketSaleIncrementResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

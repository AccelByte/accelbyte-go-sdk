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

// TicketSaleDecrementRequest Ticket sale decrement request
//
// swagger:model Ticket sale decrement request.
type TicketSaleDecrementRequest struct {

	// orderNo
	// Required: true
	OrderNo *string `json:"orderNo"`
}

// Validate validates this Ticket sale decrement request
func (m *TicketSaleDecrementRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOrderNo(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TicketSaleDecrementRequest) validateOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("orderNo", "body", m.OrderNo); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TicketSaleDecrementRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TicketSaleDecrementRequest) UnmarshalBinary(b []byte) error {
	var res TicketSaleDecrementRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

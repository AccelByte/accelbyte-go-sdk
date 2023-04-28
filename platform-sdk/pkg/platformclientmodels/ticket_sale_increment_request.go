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

// TicketSaleIncrementRequest Ticket sale increment request
//
// swagger:model Ticket sale increment request.
type TicketSaleIncrementRequest struct {

	// increment
	// Required: true
	// Format: int32
	Count *int32 `json:"count"`

	// order No
	// Required: true
	OrderNo *string `json:"orderNo"`
}

// Validate validates this Ticket sale increment request
func (m *TicketSaleIncrementRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOrderNo(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TicketSaleIncrementRequest) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *TicketSaleIncrementRequest) validateOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("orderNo", "body", m.OrderNo); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TicketSaleIncrementRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TicketSaleIncrementRequest) UnmarshalBinary(b []byte) error {
	var res TicketSaleIncrementRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

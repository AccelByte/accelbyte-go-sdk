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

// TicketDynamicInfo Ticket dynamic info
//
// swagger:model Ticket dynamic info.
type TicketDynamicInfo struct {

	// The available sale count, -1 means UNLIMITED
	// Required: true
	// Format: int32
	AvailableSaleCount *int32 `json:"availableSaleCount"`
}

// Validate validates this Ticket dynamic info
func (m *TicketDynamicInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvailableSaleCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TicketDynamicInfo) validateAvailableSaleCount(formats strfmt.Registry) error {

	if err := validate.Required("availableSaleCount", "body", m.AvailableSaleCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TicketDynamicInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TicketDynamicInfo) UnmarshalBinary(b []byte) error {
	var res TicketDynamicInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

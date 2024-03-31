// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsTicketStatus Models ticket status
//
// swagger:model Models ticket status.
type ModelsTicketStatus struct {

	// matched
	// Required: true
	Matched *bool `json:"matched"`

	// ticket
	// Required: true
	Ticket *ModelsTicket `json:"ticket"`
}

// Validate validates this Models ticket status
func (m *ModelsTicketStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatched(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicket(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsTicketStatus) validateMatched(formats strfmt.Registry) error {

	if err := validate.Required("matched", "body", m.Matched); err != nil {
		return err
	}

	return nil
}

func (m *ModelsTicketStatus) validateTicket(formats strfmt.Registry) error {

	if err := validate.Required("ticket", "body", m.Ticket); err != nil {
		return err
	}

	if m.Ticket != nil {
		if err := m.Ticket.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("ticket")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTicketStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTicketStatus) UnmarshalBinary(b []byte) error {
	var res ModelsTicketStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

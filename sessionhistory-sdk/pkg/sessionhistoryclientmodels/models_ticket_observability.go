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

// ModelsTicketObservability Models ticket observability
//
// swagger:model Models ticket observability.
type ModelsTicketObservability struct {

	// ticket
	// Required: true
	Ticket *ModelsTicketData `json:"ticket"`
}

// Validate validates this Models ticket observability
func (m *ModelsTicketObservability) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTicket(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsTicketObservability) validateTicket(formats strfmt.Registry) error {

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
func (m *ModelsTicketObservability) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTicketObservability) UnmarshalBinary(b []byte) error {
	var res ModelsTicketObservability
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

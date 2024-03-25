// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsSortTicket Models sort ticket
//
// swagger:model Models sort ticket.
type ModelsSortTicket struct {

	// search_result
	// Required: true
	SearchResult *string `json:"search_result"`

	// ticket_queue
	// Required: true
	TicketQueue *string `json:"ticket_queue"`
}

// Validate validates this Models sort ticket
func (m *ModelsSortTicket) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSearchResult(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketQueue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSortTicket) validateSearchResult(formats strfmt.Registry) error {

	if err := validate.Required("search_result", "body", m.SearchResult); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSortTicket) validateTicketQueue(formats strfmt.Registry) error {

	if err := validate.Required("ticket_queue", "body", m.TicketQueue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSortTicket) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSortTicket) UnmarshalBinary(b []byte) error {
	var res ModelsSortTicket
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

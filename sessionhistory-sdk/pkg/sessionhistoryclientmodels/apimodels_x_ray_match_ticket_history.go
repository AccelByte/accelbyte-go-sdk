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

// ApimodelsXRayMatchTicketHistory Apimodels X ray match ticket history
//
// swagger:model Apimodels X ray match ticket history.
type ApimodelsXRayMatchTicketHistory struct {

	// action
	// Required: true
	Action *string `json:"action"`

	// match
	Match *ApimodelsEventMatchHistory `json:"match,omitempty"`

	// ticket
	Ticket *ModelsTicket `json:"ticket,omitempty"`

	// timestamp
	// Required: true
	// Format: date-time
	Timestamp strfmt.DateTime `json:"timestamp"`
}

// Validate validates this Apimodels X ray match ticket history
func (m *ApimodelsXRayMatchTicketHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimestamp(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayMatchTicketHistory) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchTicketHistory) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("timestamp", "body", strfmt.DateTime(m.Timestamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("timestamp", "body", "date-time", m.Timestamp.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayMatchTicketHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayMatchTicketHistory) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayMatchTicketHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

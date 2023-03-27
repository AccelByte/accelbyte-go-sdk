// Code generated by go-swagger; DO NOT EDIT.

package match2clientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIMatchTicketResponse api match ticket response
//
// swagger:model api.MatchTicketResponse
type APIMatchTicketResponse struct {

	// match ticket ID
	// Required: true
	MatchTicketID *string `json:"matchTicketID"`

	// queue time
	// Required: true
	QueueTime *int32 `json:"queueTime"`
}

// Validate validates this api match ticket response
func (m *APIMatchTicketResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchTicketID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateQueueTime(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIMatchTicketResponse) validateMatchTicketID(formats strfmt.Registry) error {

	if err := validate.Required("matchTicketID", "body", m.MatchTicketID); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchTicketResponse) validateQueueTime(formats strfmt.Registry) error {

	if err := validate.Required("queueTime", "body", m.QueueTime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIMatchTicketResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMatchTicketResponse) UnmarshalBinary(b []byte) error {
	var res APIMatchTicketResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

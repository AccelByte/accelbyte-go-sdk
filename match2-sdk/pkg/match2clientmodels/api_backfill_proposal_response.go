// Code generated by go-swagger; DO NOT EDIT.

package match2clientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIBackfillProposalResponse api backfill proposal response
//
// swagger:model api.BackfillProposalResponse
type APIBackfillProposalResponse struct {

	// backfill ticket ID
	BackfillTicketID string `json:"backfillTicketID,omitempty"`

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// match pool
	MatchPool string `json:"matchPool,omitempty"`

	// match session ID
	MatchSessionID string `json:"matchSessionID,omitempty"`

	// proposal ID
	ProposalID string `json:"proposalID,omitempty"`

	// proposed teams
	ProposedTeams []*APITeam `json:"proposedTeams"`

	// tickets
	Tickets []*APITicket `json:"tickets"`
}

// Validate validates this api backfill proposal response
func (m *APIBackfillProposalResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateProposedTeams(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTickets(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIBackfillProposalResponse) validateCreatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.CreatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *APIBackfillProposalResponse) validateProposedTeams(formats strfmt.Registry) error {

	if swag.IsZero(m.ProposedTeams) { // not required
		return nil
	}

	for i := 0; i < len(m.ProposedTeams); i++ {
		if swag.IsZero(m.ProposedTeams[i]) { // not required
			continue
		}

		if m.ProposedTeams[i] != nil {
			if err := m.ProposedTeams[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("proposedTeams" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *APIBackfillProposalResponse) validateTickets(formats strfmt.Registry) error {

	if swag.IsZero(m.Tickets) { // not required
		return nil
	}

	for i := 0; i < len(m.Tickets); i++ {
		if swag.IsZero(m.Tickets[i]) { // not required
			continue
		}

		if m.Tickets[i] != nil {
			if err := m.Tickets[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("tickets" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIBackfillProposalResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIBackfillProposalResponse) UnmarshalBinary(b []byte) error {
	var res APIBackfillProposalResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

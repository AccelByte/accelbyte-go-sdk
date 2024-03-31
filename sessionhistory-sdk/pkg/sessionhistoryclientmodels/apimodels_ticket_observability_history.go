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

// ApimodelsTicketObservabilityHistory Apimodels ticket observability history
//
// swagger:model Apimodels ticket observability history.
type ApimodelsTicketObservabilityHistory struct {

	// action
	// Required: true
	Action *string `json:"Action"`

	// expiredat
	// Required: true
	// Format: date-time
	ExpiredAt strfmt.DateTime `json:"ExpiredAt"`

	// id
	// Required: true
	ID *string `json:"ID"`

	// payload
	// Required: true
	Payload interface{} `json:"Payload"`

	// podname
	// Required: true
	PodName *string `json:"PodName"`

	// tickid
	// Required: true
	// Format: int64
	TickID *int64 `json:"TickID"`

	// timestamp
	// Required: true
	// Format: date-time
	Timestamp strfmt.DateTime `json:"Timestamp"`

	// party_id
	// Required: true
	PartyID *string `json:"party_id"`

	// ticket_id
	// Required: true
	TicketID *string `json:"ticket_id"`
}

// Validate validates this Apimodels ticket observability history
func (m *ApimodelsTicketObservabilityHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiredAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTickID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimestamp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsTicketObservabilityHistory) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("Action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityHistory) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("ExpiredAt", "body", strfmt.DateTime(m.ExpiredAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("ExpiredAt", "body", "date-time", m.ExpiredAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityHistory) validateID(formats strfmt.Registry) error {

	if err := validate.Required("ID", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityHistory) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("PodName", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityHistory) validateTickID(formats strfmt.Registry) error {

	if err := validate.Required("TickID", "body", m.TickID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityHistory) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("Timestamp", "body", strfmt.DateTime(m.Timestamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("Timestamp", "body", "date-time", m.Timestamp.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityHistory) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("party_id", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsTicketObservabilityHistory) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticket_id", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsTicketObservabilityHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsTicketObservabilityHistory) UnmarshalBinary(b []byte) error {
	var res ApimodelsTicketObservabilityHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetMockTicketsResponse Models get mock tickets response
//
// swagger:model Models get mock tickets response.
type ModelsGetMockTicketsResponse struct {

	// cancelled_count
	// Required: true
	// Format: int32
	CancelledCount *int32 `json:"cancelled_count"`

	// highest_mmr
	// Required: true
	// Format: int32
	HighestMmr *int32 `json:"highest_mmr"`

	// in_queue_count
	// Required: true
	// Format: int32
	InQueueCount *int32 `json:"in_queue_count"`

	// lowest_mmr
	// Required: true
	// Format: int32
	LowestMmr *int32 `json:"lowest_mmr"`

	// matched_count
	// Required: true
	// Format: int32
	MatchedCount *int32 `json:"matched_count"`

	// mmr_in_queue
	// Required: true
	MmrInQueue map[string]int64 `json:"mmr_in_queue"`

	// mmr_matched
	// Required: true
	MmrMatched map[string]int64 `json:"mmr_matched"`

	// mmr_timeout
	// Required: true
	MmrTimeout map[string]int64 `json:"mmr_timeout"`

	// tickets
	// Required: true
	Tickets []*ModelsMockTicket `json:"tickets"`

	// timeout_count
	// Required: true
	// Format: int32
	TimeoutCount *int32 `json:"timeout_count"`
}

// Validate validates this Models get mock tickets response
func (m *ModelsGetMockTicketsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCancelledCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHighestMmr(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInQueueCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLowestMmr(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchedCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTickets(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimeoutCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetMockTicketsResponse) validateCancelledCount(formats strfmt.Registry) error {

	if err := validate.Required("cancelled_count", "body", m.CancelledCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetMockTicketsResponse) validateHighestMmr(formats strfmt.Registry) error {

	if err := validate.Required("highest_mmr", "body", m.HighestMmr); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetMockTicketsResponse) validateInQueueCount(formats strfmt.Registry) error {

	if err := validate.Required("in_queue_count", "body", m.InQueueCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetMockTicketsResponse) validateLowestMmr(formats strfmt.Registry) error {

	if err := validate.Required("lowest_mmr", "body", m.LowestMmr); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetMockTicketsResponse) validateMatchedCount(formats strfmt.Registry) error {

	if err := validate.Required("matched_count", "body", m.MatchedCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetMockTicketsResponse) validateTickets(formats strfmt.Registry) error {

	if err := validate.Required("tickets", "body", m.Tickets); err != nil {
		return err
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

func (m *ModelsGetMockTicketsResponse) validateTimeoutCount(formats strfmt.Registry) error {

	if err := validate.Required("timeout_count", "body", m.TimeoutCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetMockTicketsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetMockTicketsResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetMockTicketsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

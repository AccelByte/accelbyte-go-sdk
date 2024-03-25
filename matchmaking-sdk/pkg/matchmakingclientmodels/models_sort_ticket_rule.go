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

// ModelsSortTicketRule Models sort ticket rule
//
// swagger:model Models sort ticket rule.
type ModelsSortTicketRule struct {

	// search_result
	// Required: true
	SearchResult *string `json:"search_result"`

	// threshold
	// Required: true
	// Format: int64
	Threshold *int64 `json:"threshold"`

	// ticket_queue
	// Required: true
	TicketQueue *string `json:"ticket_queue"`
}

// Validate validates this Models sort ticket rule
func (m *ModelsSortTicketRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSearchResult(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateThreshold(formats); err != nil {
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

func (m *ModelsSortTicketRule) validateSearchResult(formats strfmt.Registry) error {

	if err := validate.Required("search_result", "body", m.SearchResult); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSortTicketRule) validateThreshold(formats strfmt.Registry) error {

	if err := validate.Required("threshold", "body", m.Threshold); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSortTicketRule) validateTicketQueue(formats strfmt.Registry) error {

	if err := validate.Required("ticket_queue", "body", m.TicketQueue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSortTicketRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSortTicketRule) UnmarshalBinary(b []byte) error {
	var res ModelsSortTicketRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

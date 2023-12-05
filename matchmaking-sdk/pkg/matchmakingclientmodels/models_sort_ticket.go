// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"encoding/json"

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
	// Enum: ['distance', 'largestPartySize', 'none', 'oldestTicketAge', 'random']
	// Required: true
	SearchResult *string `json:"search_result"`

	// ticket_queue
	// Enum: ['distance', 'largestPartySize', 'none', 'oldestTicketAge', 'random']
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

var modelsSortTicketTypeSearchResultPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DISTANCE", "LARGESTPARTYSIZE", "NONE", "OLDESTTICKETAGE", "RANDOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSortTicketTypeSearchResultPropEnum = append(modelsSortTicketTypeSearchResultPropEnum, v)
	}
}

const (

	// ModelsSortTicketSearchResultDISTANCE captures enum value "DISTANCE"
	ModelsSortTicketSearchResultDISTANCE string = "DISTANCE"

	// ModelsSortTicketSearchResultLARGESTPARTYSIZE captures enum value "LARGESTPARTYSIZE"
	ModelsSortTicketSearchResultLARGESTPARTYSIZE string = "LARGESTPARTYSIZE"

	// ModelsSortTicketSearchResultNONE captures enum value "NONE"
	ModelsSortTicketSearchResultNONE string = "NONE"

	// ModelsSortTicketSearchResultOLDESTTICKETAGE captures enum value "OLDESTTICKETAGE"
	ModelsSortTicketSearchResultOLDESTTICKETAGE string = "OLDESTTICKETAGE"

	// ModelsSortTicketSearchResultRANDOM captures enum value "RANDOM"
	ModelsSortTicketSearchResultRANDOM string = "RANDOM"
)

// prop value enum
func (m *ModelsSortTicket) validateSearchResultEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSortTicketTypeSearchResultPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSortTicket) validateSearchResult(formats strfmt.Registry) error {

	if err := validate.Required("search_result", "body", m.SearchResult); err != nil {
		return err
	}

	// value enum
	if err := m.validateSearchResultEnum("search_result", "body", *m.SearchResult); err != nil {
		return err
	}

	return nil
}

var modelsSortTicketTypeTicketQueuePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DISTANCE", "LARGESTPARTYSIZE", "NONE", "OLDESTTICKETAGE", "RANDOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSortTicketTypeTicketQueuePropEnum = append(modelsSortTicketTypeTicketQueuePropEnum, v)
	}
}

const (

	// ModelsSortTicketTicketQueueDISTANCE captures enum value "DISTANCE"
	ModelsSortTicketTicketQueueDISTANCE string = "DISTANCE"

	// ModelsSortTicketTicketQueueLARGESTPARTYSIZE captures enum value "LARGESTPARTYSIZE"
	ModelsSortTicketTicketQueueLARGESTPARTYSIZE string = "LARGESTPARTYSIZE"

	// ModelsSortTicketTicketQueueNONE captures enum value "NONE"
	ModelsSortTicketTicketQueueNONE string = "NONE"

	// ModelsSortTicketTicketQueueOLDESTTICKETAGE captures enum value "OLDESTTICKETAGE"
	ModelsSortTicketTicketQueueOLDESTTICKETAGE string = "OLDESTTICKETAGE"

	// ModelsSortTicketTicketQueueRANDOM captures enum value "RANDOM"
	ModelsSortTicketTicketQueueRANDOM string = "RANDOM"
)

// prop value enum
func (m *ModelsSortTicket) validateTicketQueueEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSortTicketTypeTicketQueuePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSortTicket) validateTicketQueue(formats strfmt.Registry) error {

	if err := validate.Required("ticket_queue", "body", m.TicketQueue); err != nil {
		return err
	}

	// value enum
	if err := m.validateTicketQueueEnum("ticket_queue", "body", *m.TicketQueue); err != nil {
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

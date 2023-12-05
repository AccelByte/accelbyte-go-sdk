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

// ModelsSortTicketRule Models sort ticket rule
//
// swagger:model Models sort ticket rule.
type ModelsSortTicketRule struct {

	// search_result
	// Enum: ['distance', 'largestPartySize', 'none', 'oldestTicketAge', 'random']
	// Required: true
	SearchResult *string `json:"search_result"`

	// threshold
	// Required: true
	// Format: int64
	Threshold *int64 `json:"threshold"`

	// ticket_queue
	// Enum: ['distance', 'largestPartySize', 'none', 'oldestTicketAge', 'random']
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

var modelsSortTicketRuleTypeSearchResultPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DISTANCE", "LARGESTPARTYSIZE", "NONE", "OLDESTTICKETAGE", "RANDOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSortTicketRuleTypeSearchResultPropEnum = append(modelsSortTicketRuleTypeSearchResultPropEnum, v)
	}
}

const (

	// ModelsSortTicketRuleSearchResultDISTANCE captures enum value "DISTANCE"
	ModelsSortTicketRuleSearchResultDISTANCE string = "DISTANCE"

	// ModelsSortTicketRuleSearchResultLARGESTPARTYSIZE captures enum value "LARGESTPARTYSIZE"
	ModelsSortTicketRuleSearchResultLARGESTPARTYSIZE string = "LARGESTPARTYSIZE"

	// ModelsSortTicketRuleSearchResultNONE captures enum value "NONE"
	ModelsSortTicketRuleSearchResultNONE string = "NONE"

	// ModelsSortTicketRuleSearchResultOLDESTTICKETAGE captures enum value "OLDESTTICKETAGE"
	ModelsSortTicketRuleSearchResultOLDESTTICKETAGE string = "OLDESTTICKETAGE"

	// ModelsSortTicketRuleSearchResultRANDOM captures enum value "RANDOM"
	ModelsSortTicketRuleSearchResultRANDOM string = "RANDOM"
)

// prop value enum
func (m *ModelsSortTicketRule) validateSearchResultEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSortTicketRuleTypeSearchResultPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSortTicketRule) validateSearchResult(formats strfmt.Registry) error {

	if err := validate.Required("search_result", "body", m.SearchResult); err != nil {
		return err
	}

	// value enum
	if err := m.validateSearchResultEnum("search_result", "body", *m.SearchResult); err != nil {
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

var modelsSortTicketRuleTypeTicketQueuePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DISTANCE", "LARGESTPARTYSIZE", "NONE", "OLDESTTICKETAGE", "RANDOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSortTicketRuleTypeTicketQueuePropEnum = append(modelsSortTicketRuleTypeTicketQueuePropEnum, v)
	}
}

const (

	// ModelsSortTicketRuleTicketQueueDISTANCE captures enum value "DISTANCE"
	ModelsSortTicketRuleTicketQueueDISTANCE string = "DISTANCE"

	// ModelsSortTicketRuleTicketQueueLARGESTPARTYSIZE captures enum value "LARGESTPARTYSIZE"
	ModelsSortTicketRuleTicketQueueLARGESTPARTYSIZE string = "LARGESTPARTYSIZE"

	// ModelsSortTicketRuleTicketQueueNONE captures enum value "NONE"
	ModelsSortTicketRuleTicketQueueNONE string = "NONE"

	// ModelsSortTicketRuleTicketQueueOLDESTTICKETAGE captures enum value "OLDESTTICKETAGE"
	ModelsSortTicketRuleTicketQueueOLDESTTICKETAGE string = "OLDESTTICKETAGE"

	// ModelsSortTicketRuleTicketQueueRANDOM captures enum value "RANDOM"
	ModelsSortTicketRuleTicketQueueRANDOM string = "RANDOM"
)

// prop value enum
func (m *ModelsSortTicketRule) validateTicketQueueEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSortTicketRuleTypeTicketQueuePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSortTicketRule) validateTicketQueue(formats strfmt.Registry) error {

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

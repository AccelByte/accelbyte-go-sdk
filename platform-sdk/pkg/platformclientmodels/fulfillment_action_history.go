// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// FulfillmentActionHistory Fulfillment action history
//
// swagger:model Fulfillment action history.
type FulfillmentActionHistory struct {

	// action
	// Enum: ['FULFILLMENT', 'REVOKE_FULFILLMENT']
	Action string `json:"action,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// fulfillmenthistoryid
	FulfillmentHistoryID string `json:"fulfillmentHistoryId,omitempty"`

	// revocationhistoryid
	RevocationHistoryID string `json:"revocationHistoryId,omitempty"`

	// state
	// Enum: ['FULFILLED', 'FULFILL_FAILED', 'REVOKED', 'REVOKE_FAILED']
	State string `json:"state,omitempty"`
}

// Validate validates this Fulfillment action history
func (m *FulfillmentActionHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var fulfillmentActionHistoryTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FULFILLMENT", "REVOKE_FULFILLMENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentActionHistoryTypeActionPropEnum = append(fulfillmentActionHistoryTypeActionPropEnum, v)
	}
}

const (

	// FulfillmentActionHistoryActionFULFILLMENT captures enum value "FULFILLMENT"
	FulfillmentActionHistoryActionFULFILLMENT string = "FULFILLMENT"

	// FulfillmentActionHistoryActionREVOKEFULFILLMENT captures enum value "REVOKE_FULFILLMENT"
	FulfillmentActionHistoryActionREVOKEFULFILLMENT string = "REVOKE_FULFILLMENT"
)

// prop value enum
func (m *FulfillmentActionHistory) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentActionHistoryTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

var fulfillmentActionHistoryTypeStatePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FULFILLED", "FULFILL_FAILED", "REVOKED", "REVOKE_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentActionHistoryTypeStatePropEnum = append(fulfillmentActionHistoryTypeStatePropEnum, v)
	}
}

const (

	// FulfillmentActionHistoryStateFULFILLED captures enum value "FULFILLED"
	FulfillmentActionHistoryStateFULFILLED string = "FULFILLED"

	// FulfillmentActionHistoryStateFULFILLFAILED captures enum value "FULFILL_FAILED"
	FulfillmentActionHistoryStateFULFILLFAILED string = "FULFILL_FAILED"

	// FulfillmentActionHistoryStateREVOKED captures enum value "REVOKED"
	FulfillmentActionHistoryStateREVOKED string = "REVOKED"

	// FulfillmentActionHistoryStateREVOKEFAILED captures enum value "REVOKE_FAILED"
	FulfillmentActionHistoryStateREVOKEFAILED string = "REVOKE_FAILED"
)

// prop value enum
func (m *FulfillmentActionHistory) validateStateEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentActionHistoryTypeStatePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentActionHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentActionHistory) UnmarshalBinary(b []byte) error {
	var res FulfillmentActionHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

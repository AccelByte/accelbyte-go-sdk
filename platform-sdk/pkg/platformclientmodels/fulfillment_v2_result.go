// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// FulfillmentV2Result Fulfillment V2 result
//
// swagger:model Fulfillment V2 result.
type FulfillmentV2Result struct {

	// credit granted
	CreditSummaries []*CreditSummary `json:"creditSummaries,omitempty"`

	// entitlement granted
	EntitlementSummaries []*EntitlementSummary `json:"entitlementSummaries,omitempty"`

	// fulfillment id
	ID string `json:"id,omitempty"`

	// item
	// Required: true
	Items []*FulfillmentItem `json:"items"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// state
	// Enum: ['FULFILLED', 'FULFILL_FAILED', 'REVOKED', 'REVOKE_FAILED']
	// Required: true
	State *string `json:"state"`

	// stateInfo
	// Required: true
	StateInfo *FulfillmentStateInfo `json:"stateInfo"`

	// affected subscriptions
	SubscriptionSummaries []*SubscriptionSummary `json:"subscriptionSummaries,omitempty"`

	// transactionId
	// Required: true
	TransactionID *string `json:"transactionId"`

	// userId
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Fulfillment V2 result
func (m *FulfillmentV2Result) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItems(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateState(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStateInfo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTransactionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *FulfillmentV2Result) validateItems(formats strfmt.Registry) error {

	if err := validate.Required("items", "body", m.Items); err != nil {
		return err
	}

	for i := 0; i < len(m.Items); i++ {
		if swag.IsZero(m.Items[i]) { // not required
			continue
		}

		if m.Items[i] != nil {
			if err := m.Items[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("items" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *FulfillmentV2Result) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var fulfillmentV2ResultTypeStatePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FULFILLED", "FULFILL_FAILED", "REVOKED", "REVOKE_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentV2ResultTypeStatePropEnum = append(fulfillmentV2ResultTypeStatePropEnum, v)
	}
}

const (

	// FulfillmentV2ResultStateFULFILLED captures enum value "FULFILLED"
	FulfillmentV2ResultStateFULFILLED string = "FULFILLED"

	// FulfillmentV2ResultStateFULFILLFAILED captures enum value "FULFILL_FAILED"
	FulfillmentV2ResultStateFULFILLFAILED string = "FULFILL_FAILED"

	// FulfillmentV2ResultStateREVOKED captures enum value "REVOKED"
	FulfillmentV2ResultStateREVOKED string = "REVOKED"

	// FulfillmentV2ResultStateREVOKEFAILED captures enum value "REVOKE_FAILED"
	FulfillmentV2ResultStateREVOKEFAILED string = "REVOKE_FAILED"
)

// prop value enum
func (m *FulfillmentV2Result) validateStateEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentV2ResultTypeStatePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentV2Result) validateState(formats strfmt.Registry) error {

	if err := validate.Required("state", "body", m.State); err != nil {
		return err
	}

	// value enum
	if err := m.validateStateEnum("state", "body", *m.State); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentV2Result) validateStateInfo(formats strfmt.Registry) error {

	if err := validate.Required("stateInfo", "body", m.StateInfo); err != nil {
		return err
	}

	if m.StateInfo != nil {
		if err := m.StateInfo.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("stateInfo")
			}
			return err
		}
	}

	return nil
}

func (m *FulfillmentV2Result) validateTransactionID(formats strfmt.Registry) error {

	if err := validate.Required("transactionId", "body", m.TransactionID); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentV2Result) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentV2Result) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentV2Result) UnmarshalBinary(b []byte) error {
	var res FulfillmentV2Result
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

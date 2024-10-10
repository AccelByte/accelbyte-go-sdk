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

// FulfillmentInfo Fulfillment info
//
// swagger:model Fulfillment info.
type FulfillmentInfo struct {

	// actions history
	Actions []*FulfillmentActionHistory `json:"actions,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// items should do fulfillment
	Items []*FulfillmentItem `json:"items,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// state
	// Enum: ['FULFILLED', 'FULFILL_FAILED', 'REVOKED', 'REVOKE_FAILED']
	State string `json:"state,omitempty"`

	// state info
	StateInfo *FulfillmentStateInfo `json:"stateInfo,omitempty"`

	// transactionId
	TransactionID string `json:"transactionId,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// userId
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Fulfillment info
func (m *FulfillmentInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *FulfillmentInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var fulfillmentInfoTypeStatePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FULFILLED", "FULFILL_FAILED", "REVOKED", "REVOKE_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentInfoTypeStatePropEnum = append(fulfillmentInfoTypeStatePropEnum, v)
	}
}

const (

	// FulfillmentInfoStateFULFILLED captures enum value "FULFILLED"
	FulfillmentInfoStateFULFILLED string = "FULFILLED"

	// FulfillmentInfoStateFULFILLFAILED captures enum value "FULFILL_FAILED"
	FulfillmentInfoStateFULFILLFAILED string = "FULFILL_FAILED"

	// FulfillmentInfoStateREVOKED captures enum value "REVOKED"
	FulfillmentInfoStateREVOKED string = "REVOKED"

	// FulfillmentInfoStateREVOKEFAILED captures enum value "REVOKE_FAILED"
	FulfillmentInfoStateREVOKEFAILED string = "REVOKE_FAILED"
)

// prop value enum
func (m *FulfillmentInfo) validateStateEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentInfoTypeStatePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentInfo) UnmarshalBinary(b []byte) error {
	var res FulfillmentInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

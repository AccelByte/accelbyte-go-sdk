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

// OrderHistoryInfo Order history info
//
// swagger:model Order history info.
type OrderHistoryInfo struct {

	// The action of the order
	// Enum: ['CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CLOSE', 'DELETED', 'FULFILLED', 'FULFILL_FAILED', 'INIT', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED', 'SET_STATUS']
	// Required: true
	Action *string `json:"action"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// The namespace of this order
	// Required: true
	Namespace *string `json:"namespace"`

	// The operator to this order
	// Required: true
	Operator *string `json:"operator"`

	// The Order number
	// Required: true
	OrderNo *string `json:"orderNo"`

	// The reason of this operation
	Reason string `json:"reason,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// The owner of the order
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Order history info
func (m *OrderHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOperator(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOrderNo(formats); err != nil {
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

var orderHistoryInfoTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CLOSE", "DELETED", "FULFILLED", "FULFILL_FAILED", "INIT", "REFUNDED", "REFUNDING", "REFUND_FAILED", "SET_STATUS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		orderHistoryInfoTypeActionPropEnum = append(orderHistoryInfoTypeActionPropEnum, v)
	}
}

const (

	// OrderHistoryInfoActionCHARGEBACK captures enum value "CHARGEBACK"
	OrderHistoryInfoActionCHARGEBACK string = "CHARGEBACK"

	// OrderHistoryInfoActionCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	OrderHistoryInfoActionCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// OrderHistoryInfoActionCHARGED captures enum value "CHARGED"
	OrderHistoryInfoActionCHARGED string = "CHARGED"

	// OrderHistoryInfoActionCLOSE captures enum value "CLOSE"
	OrderHistoryInfoActionCLOSE string = "CLOSE"

	// OrderHistoryInfoActionDELETED captures enum value "DELETED"
	OrderHistoryInfoActionDELETED string = "DELETED"

	// OrderHistoryInfoActionFULFILLED captures enum value "FULFILLED"
	OrderHistoryInfoActionFULFILLED string = "FULFILLED"

	// OrderHistoryInfoActionFULFILLFAILED captures enum value "FULFILL_FAILED"
	OrderHistoryInfoActionFULFILLFAILED string = "FULFILL_FAILED"

	// OrderHistoryInfoActionINIT captures enum value "INIT"
	OrderHistoryInfoActionINIT string = "INIT"

	// OrderHistoryInfoActionREFUNDED captures enum value "REFUNDED"
	OrderHistoryInfoActionREFUNDED string = "REFUNDED"

	// OrderHistoryInfoActionREFUNDING captures enum value "REFUNDING"
	OrderHistoryInfoActionREFUNDING string = "REFUNDING"

	// OrderHistoryInfoActionREFUNDFAILED captures enum value "REFUND_FAILED"
	OrderHistoryInfoActionREFUNDFAILED string = "REFUND_FAILED"

	// OrderHistoryInfoActionSETSTATUS captures enum value "SET_STATUS"
	OrderHistoryInfoActionSETSTATUS string = "SET_STATUS"
)

// prop value enum
func (m *OrderHistoryInfo) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, orderHistoryInfoTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *OrderHistoryInfo) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	// value enum
	if err := m.validateActionEnum("action", "body", *m.Action); err != nil {
		return err
	}

	return nil
}

func (m *OrderHistoryInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *OrderHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *OrderHistoryInfo) validateOperator(formats strfmt.Registry) error {

	if err := validate.Required("operator", "body", m.Operator); err != nil {
		return err
	}

	return nil
}

func (m *OrderHistoryInfo) validateOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("orderNo", "body", m.OrderNo); err != nil {
		return err
	}

	return nil
}

func (m *OrderHistoryInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *OrderHistoryInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderHistoryInfo) UnmarshalBinary(b []byte) error {
	var res OrderHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// OrderUpdate Order update
//
// swagger:model Order update.
type OrderUpdate struct {

	// status
	// Enum: ['CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CLOSED', 'DELETED', 'FULFILLED', 'FULFILL_FAILED', 'INIT', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED']
	// Required: true
	Status *string `json:"status"`

	// update status reason
	// Required: true
	StatusReason *string `json:"statusReason"`
}

// Validate validates this Order update
func (m *OrderUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusReason(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var orderUpdateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CLOSED", "DELETED", "FULFILLED", "FULFILL_FAILED", "INIT", "REFUNDED", "REFUNDING", "REFUND_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		orderUpdateTypeStatusPropEnum = append(orderUpdateTypeStatusPropEnum, v)
	}
}

const (

	// OrderUpdateStatusCHARGEBACK captures enum value "CHARGEBACK"
	OrderUpdateStatusCHARGEBACK string = "CHARGEBACK"

	// OrderUpdateStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	OrderUpdateStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// OrderUpdateStatusCHARGED captures enum value "CHARGED"
	OrderUpdateStatusCHARGED string = "CHARGED"

	// OrderUpdateStatusCLOSED captures enum value "CLOSED"
	OrderUpdateStatusCLOSED string = "CLOSED"

	// OrderUpdateStatusDELETED captures enum value "DELETED"
	OrderUpdateStatusDELETED string = "DELETED"

	// OrderUpdateStatusFULFILLED captures enum value "FULFILLED"
	OrderUpdateStatusFULFILLED string = "FULFILLED"

	// OrderUpdateStatusFULFILLFAILED captures enum value "FULFILL_FAILED"
	OrderUpdateStatusFULFILLFAILED string = "FULFILL_FAILED"

	// OrderUpdateStatusINIT captures enum value "INIT"
	OrderUpdateStatusINIT string = "INIT"

	// OrderUpdateStatusREFUNDED captures enum value "REFUNDED"
	OrderUpdateStatusREFUNDED string = "REFUNDED"

	// OrderUpdateStatusREFUNDING captures enum value "REFUNDING"
	OrderUpdateStatusREFUNDING string = "REFUNDING"

	// OrderUpdateStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	OrderUpdateStatusREFUNDFAILED string = "REFUND_FAILED"
)

// prop value enum
func (m *OrderUpdate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, orderUpdateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *OrderUpdate) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *OrderUpdate) validateStatusReason(formats strfmt.Registry) error {

	if err := validate.Required("statusReason", "body", m.StatusReason); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderUpdate) UnmarshalBinary(b []byte) error {
	var res OrderUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// PaymentOrderRefundResult Payment order refund result
//
// swagger:model Payment order refund result.
type PaymentOrderRefundResult struct {

	// The time of the order created
	// Required: true
	// Format: date-time
	CreatedTime strfmt.DateTime `json:"createdTime"`

	// Payment order namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Payment order number
	// Required: true
	PaymentOrderNo *string `json:"paymentOrderNo"`

	// The time of the order refunded
	// Format: date-time
	RefundedTime *strfmt.DateTime `json:"refundedTime,omitempty"`

	// Payment order status
	// Enum: ['AUTHORISED', 'AUTHORISE_FAILED', 'CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CHARGE_FAILED', 'DELETED', 'INIT', 'NOTIFICATION_OF_CHARGEBACK', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED', 'REQUEST_FOR_INFORMATION']
	// Required: true
	Status *string `json:"status"`

	// Game namespace
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// User id in game namespace
	TargetUserID string `json:"targetUserId,omitempty"`
}

// Validate validates this Payment order refund result
func (m *PaymentOrderRefundResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentOrderRefundResult) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", strfmt.DateTime(m.CreatedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdTime", "body", "date-time", m.CreatedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderRefundResult) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderRefundResult) validatePaymentOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("paymentOrderNo", "body", m.PaymentOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentOrderRefundResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTHORISED", "AUTHORISE_FAILED", "CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CHARGE_FAILED", "DELETED", "INIT", "NOTIFICATION_OF_CHARGEBACK", "REFUNDED", "REFUNDING", "REFUND_FAILED", "REQUEST_FOR_INFORMATION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderRefundResultTypeStatusPropEnum = append(paymentOrderRefundResultTypeStatusPropEnum, v)
	}
}

const (

	// PaymentOrderRefundResultStatusAUTHORISED captures enum value "AUTHORISED"
	PaymentOrderRefundResultStatusAUTHORISED string = "AUTHORISED"

	// PaymentOrderRefundResultStatusAUTHORISEFAILED captures enum value "AUTHORISE_FAILED"
	PaymentOrderRefundResultStatusAUTHORISEFAILED string = "AUTHORISE_FAILED"

	// PaymentOrderRefundResultStatusCHARGEBACK captures enum value "CHARGEBACK"
	PaymentOrderRefundResultStatusCHARGEBACK string = "CHARGEBACK"

	// PaymentOrderRefundResultStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	PaymentOrderRefundResultStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// PaymentOrderRefundResultStatusCHARGED captures enum value "CHARGED"
	PaymentOrderRefundResultStatusCHARGED string = "CHARGED"

	// PaymentOrderRefundResultStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	PaymentOrderRefundResultStatusCHARGEFAILED string = "CHARGE_FAILED"

	// PaymentOrderRefundResultStatusDELETED captures enum value "DELETED"
	PaymentOrderRefundResultStatusDELETED string = "DELETED"

	// PaymentOrderRefundResultStatusINIT captures enum value "INIT"
	PaymentOrderRefundResultStatusINIT string = "INIT"

	// PaymentOrderRefundResultStatusNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	PaymentOrderRefundResultStatusNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// PaymentOrderRefundResultStatusREFUNDED captures enum value "REFUNDED"
	PaymentOrderRefundResultStatusREFUNDED string = "REFUNDED"

	// PaymentOrderRefundResultStatusREFUNDING captures enum value "REFUNDING"
	PaymentOrderRefundResultStatusREFUNDING string = "REFUNDING"

	// PaymentOrderRefundResultStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	PaymentOrderRefundResultStatusREFUNDFAILED string = "REFUND_FAILED"

	// PaymentOrderRefundResultStatusREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	PaymentOrderRefundResultStatusREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"
)

// prop value enum
func (m *PaymentOrderRefundResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderRefundResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderRefundResult) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderRefundResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderRefundResult) UnmarshalBinary(b []byte) error {
	var res PaymentOrderRefundResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

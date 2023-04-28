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

// PaymentOrderCreateResult Payment order create result
//
// swagger:model Payment order create result.
type PaymentOrderCreateResult struct {

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

	// Payment url
	PaymentStationURL string `json:"paymentStationUrl,omitempty"`

	// Payment order status
	// Enum: ['AUTHORISED', 'AUTHORISE_FAILED', 'CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CHARGE_FAILED', 'DELETED', 'INIT', 'NOTIFICATION_OF_CHARGEBACK', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED', 'REQUEST_FOR_INFORMATION']
	// Required: true
	Status *string `json:"status"`

	// Game namespace
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// User id in game namespace
	TargetUserID string `json:"targetUserId,omitempty"`
}

// Validate validates this Payment order create result
func (m *PaymentOrderCreateResult) Validate(formats strfmt.Registry) error {
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

func (m *PaymentOrderCreateResult) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", strfmt.DateTime(m.CreatedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdTime", "body", "date-time", m.CreatedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderCreateResult) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderCreateResult) validatePaymentOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("paymentOrderNo", "body", m.PaymentOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentOrderCreateResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTHORISED", "AUTHORISE_FAILED", "CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CHARGE_FAILED", "DELETED", "INIT", "NOTIFICATION_OF_CHARGEBACK", "REFUNDED", "REFUNDING", "REFUND_FAILED", "REQUEST_FOR_INFORMATION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderCreateResultTypeStatusPropEnum = append(paymentOrderCreateResultTypeStatusPropEnum, v)
	}
}

const (

	// PaymentOrderCreateResultStatusAUTHORISED captures enum value "AUTHORISED"
	PaymentOrderCreateResultStatusAUTHORISED string = "AUTHORISED"

	// PaymentOrderCreateResultStatusAUTHORISEFAILED captures enum value "AUTHORISE_FAILED"
	PaymentOrderCreateResultStatusAUTHORISEFAILED string = "AUTHORISE_FAILED"

	// PaymentOrderCreateResultStatusCHARGEBACK captures enum value "CHARGEBACK"
	PaymentOrderCreateResultStatusCHARGEBACK string = "CHARGEBACK"

	// PaymentOrderCreateResultStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	PaymentOrderCreateResultStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// PaymentOrderCreateResultStatusCHARGED captures enum value "CHARGED"
	PaymentOrderCreateResultStatusCHARGED string = "CHARGED"

	// PaymentOrderCreateResultStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	PaymentOrderCreateResultStatusCHARGEFAILED string = "CHARGE_FAILED"

	// PaymentOrderCreateResultStatusDELETED captures enum value "DELETED"
	PaymentOrderCreateResultStatusDELETED string = "DELETED"

	// PaymentOrderCreateResultStatusINIT captures enum value "INIT"
	PaymentOrderCreateResultStatusINIT string = "INIT"

	// PaymentOrderCreateResultStatusNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	PaymentOrderCreateResultStatusNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// PaymentOrderCreateResultStatusREFUNDED captures enum value "REFUNDED"
	PaymentOrderCreateResultStatusREFUNDED string = "REFUNDED"

	// PaymentOrderCreateResultStatusREFUNDING captures enum value "REFUNDING"
	PaymentOrderCreateResultStatusREFUNDING string = "REFUNDING"

	// PaymentOrderCreateResultStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	PaymentOrderCreateResultStatusREFUNDFAILED string = "REFUND_FAILED"

	// PaymentOrderCreateResultStatusREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	PaymentOrderCreateResultStatusREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"
)

// prop value enum
func (m *PaymentOrderCreateResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderCreateResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderCreateResult) validateStatus(formats strfmt.Registry) error {

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
func (m *PaymentOrderCreateResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderCreateResult) UnmarshalBinary(b []byte) error {
	var res PaymentOrderCreateResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

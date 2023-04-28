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

// PaymentOrderChargeStatus Payment order charge status
//
// swagger:model Payment order charge status.
type PaymentOrderChargeStatus struct {

	// charging
	Charging bool `json:"charging"`

	// status
	// Enum: ['AUTHORISED', 'AUTHORISE_FAILED', 'CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CHARGE_FAILED', 'DELETED', 'INIT', 'NOTIFICATION_OF_CHARGEBACK', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED', 'REQUEST_FOR_INFORMATION']
	Status string `json:"status,omitempty"`
}

// Validate validates this Payment order charge status
func (m *PaymentOrderChargeStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var paymentOrderChargeStatusTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTHORISED", "AUTHORISE_FAILED", "CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CHARGE_FAILED", "DELETED", "INIT", "NOTIFICATION_OF_CHARGEBACK", "REFUNDED", "REFUNDING", "REFUND_FAILED", "REQUEST_FOR_INFORMATION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderChargeStatusTypeStatusPropEnum = append(paymentOrderChargeStatusTypeStatusPropEnum, v)
	}
}

const (

	// PaymentOrderChargeStatusStatusAUTHORISED captures enum value "AUTHORISED"
	PaymentOrderChargeStatusStatusAUTHORISED string = "AUTHORISED"

	// PaymentOrderChargeStatusStatusAUTHORISEFAILED captures enum value "AUTHORISE_FAILED"
	PaymentOrderChargeStatusStatusAUTHORISEFAILED string = "AUTHORISE_FAILED"

	// PaymentOrderChargeStatusStatusCHARGEBACK captures enum value "CHARGEBACK"
	PaymentOrderChargeStatusStatusCHARGEBACK string = "CHARGEBACK"

	// PaymentOrderChargeStatusStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	PaymentOrderChargeStatusStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// PaymentOrderChargeStatusStatusCHARGED captures enum value "CHARGED"
	PaymentOrderChargeStatusStatusCHARGED string = "CHARGED"

	// PaymentOrderChargeStatusStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	PaymentOrderChargeStatusStatusCHARGEFAILED string = "CHARGE_FAILED"

	// PaymentOrderChargeStatusStatusDELETED captures enum value "DELETED"
	PaymentOrderChargeStatusStatusDELETED string = "DELETED"

	// PaymentOrderChargeStatusStatusINIT captures enum value "INIT"
	PaymentOrderChargeStatusStatusINIT string = "INIT"

	// PaymentOrderChargeStatusStatusNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	PaymentOrderChargeStatusStatusNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// PaymentOrderChargeStatusStatusREFUNDED captures enum value "REFUNDED"
	PaymentOrderChargeStatusStatusREFUNDED string = "REFUNDED"

	// PaymentOrderChargeStatusStatusREFUNDING captures enum value "REFUNDING"
	PaymentOrderChargeStatusStatusREFUNDING string = "REFUNDING"

	// PaymentOrderChargeStatusStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	PaymentOrderChargeStatusStatusREFUNDFAILED string = "REFUND_FAILED"

	// PaymentOrderChargeStatusStatusREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	PaymentOrderChargeStatusStatusREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"
)

// prop value enum
func (m *PaymentOrderChargeStatus) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderChargeStatusTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderChargeStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderChargeStatus) UnmarshalBinary(b []byte) error {
	var res PaymentOrderChargeStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

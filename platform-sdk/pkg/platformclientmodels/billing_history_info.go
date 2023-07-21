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

// BillingHistoryInfo Billing history info
//
// swagger:model Billing history info.
type BillingHistoryInfo struct {

	// charge amount
	// Required: true
	// Format: int32
	Amount *int32 `json:"amount"`

	// billing account
	BillingAccount *BillingAccount `json:"billingAccount,omitempty"`

	// Is this payment for billing account change
	ChangeBillingAccount bool `json:"changeBillingAccount"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// currency
	// Required: true
	Currency *CurrencySummary `json:"currency"`

	// subscription description
	Description string `json:"description,omitempty"`

	// external transaction id
	ExtTxID string `json:"extTxId,omitempty"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// payment order No
	PaymentOrderNo string `json:"paymentOrderNo,omitempty"`

	// Recurring order No for this billing
	// Required: true
	RecurringOrderNo *string `json:"recurringOrderNo"`

	// Already retry attempted No
	// Format: int32
	RetryAttempted int32 `json:"retryAttempted,omitempty"`

	// sandbox
	// Required: true
	Sandbox *bool `json:"sandbox"`

	// subscription sku
	Sku string `json:"sku,omitempty"`

	// billing history status
	// Enum: ['CHARGED', 'CHARGE_FAILED', 'INIT', 'REFUNDED', 'REFUND_FAILED']
	// Required: true
	Status *string `json:"status"`

	// status reason
	StatusReason string `json:"statusReason,omitempty"`

	// subscription id
	// Required: true
	SubscriptionID *string `json:"subscriptionId"`

	// subtotal price
	// Format: int32
	SubtotalPrice int32 `json:"subtotalPrice,omitempty"`

	// subscription title
	// Required: true
	Title *string `json:"title"`

	// total price
	// Format: int32
	TotalPrice int32 `json:"totalPrice,omitempty"`

	// total tax
	// Format: int32
	TotalTax int32 `json:"totalTax,omitempty"`

	// transaction end time
	// Format: date-time
	TxEndTime *strfmt.DateTime `json:"txEndTime,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Billing history info
func (m *BillingHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrency(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRecurringOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSandbox(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscriptionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
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

func (m *BillingHistoryInfo) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateCurrency(formats strfmt.Registry) error {

	if err := validate.Required("currency", "body", m.Currency); err != nil {
		return err
	}

	if m.Currency != nil {
		if err := m.Currency.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("currency")
			}
			return err
		}
	}

	return nil
}

func (m *BillingHistoryInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateRecurringOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("recurringOrderNo", "body", m.RecurringOrderNo); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateSandbox(formats strfmt.Registry) error {

	if err := validate.Required("sandbox", "body", m.Sandbox); err != nil {
		return err
	}

	return nil
}

var billingHistoryInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHARGED", "CHARGE_FAILED", "INIT", "REFUNDED", "REFUND_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		billingHistoryInfoTypeStatusPropEnum = append(billingHistoryInfoTypeStatusPropEnum, v)
	}
}

const (

	// BillingHistoryInfoStatusCHARGED captures enum value "CHARGED"
	BillingHistoryInfoStatusCHARGED string = "CHARGED"

	// BillingHistoryInfoStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	BillingHistoryInfoStatusCHARGEFAILED string = "CHARGE_FAILED"

	// BillingHistoryInfoStatusINIT captures enum value "INIT"
	BillingHistoryInfoStatusINIT string = "INIT"

	// BillingHistoryInfoStatusREFUNDED captures enum value "REFUNDED"
	BillingHistoryInfoStatusREFUNDED string = "REFUNDED"

	// BillingHistoryInfoStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	BillingHistoryInfoStatusREFUNDFAILED string = "REFUND_FAILED"
)

// prop value enum
func (m *BillingHistoryInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, billingHistoryInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BillingHistoryInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateSubscriptionID(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionId", "body", m.SubscriptionID); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *BillingHistoryInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BillingHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BillingHistoryInfo) UnmarshalBinary(b []byte) error {
	var res BillingHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

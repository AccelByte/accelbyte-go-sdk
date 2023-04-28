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

// OrderInfo Order info
//
// swagger:model Order info.
type OrderInfo struct {

	// The time of the order chargeback reversed
	// Format: date-time
	ChargebackReversedTime *strfmt.DateTime `json:"chargebackReversedTime,omitempty"`

	// The time of the order chargeback
	// Format: date-time
	ChargebackTime *strfmt.DateTime `json:"chargebackTime,omitempty"`

	// The time of the order charged
	// Format: date-time
	ChargedTime *strfmt.DateTime `json:"chargedTime,omitempty"`

	// createdAt
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// The time of the order created
	// Format: date-time
	CreatedTime *strfmt.DateTime `json:"createdTime,omitempty"`

	// The creation options of this order
	CreationOptions *OrderCreationOptions `json:"creationOptions,omitempty"`

	// Order currency info
	// Required: true
	Currency *CurrencySummary `json:"currency"`

	// Order discounted price
	// Required: true
	// Format: int32
	DiscountedPrice *int32 `json:"discountedPrice"`

	// payment expire time
	// Format: date-time
	ExpireTime *strfmt.DateTime `json:"expireTime,omitempty"`

	// extra field to store external order information
	Ext interface{} `json:"ext,omitempty"`

	// The time of the order fulfilled
	// Format: date-time
	FulfilledTime *strfmt.DateTime `json:"fulfilledTime,omitempty"`

	// Item id
	// Required: true
	ItemID *string `json:"itemId"`

	// Item snapshot
	ItemSnapshot *ItemSnapshot `json:"itemSnapshot,omitempty"`

	// Order created language
	Language string `json:"language,omitempty"`

	// Order namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Order number
	// Required: true
	OrderNo *string `json:"orderNo"`

	// Payment method
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// Payment method fee
	// Format: int32
	PaymentMethodFee int32 `json:"paymentMethodFee,omitempty"`

	// Payment order number
	PaymentOrderNo string `json:"paymentOrderNo,omitempty"`

	// Payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	PaymentProvider string `json:"paymentProvider,omitempty"`

	// Payment provider fee
	// Format: int32
	PaymentProviderFee int32 `json:"paymentProviderFee,omitempty"`

	// payment remain seconds
	// Required: true
	// Format: int32
	PaymentRemainSeconds *int32 `json:"paymentRemainSeconds"`

	// Payment url info
	PaymentStationURL string `json:"paymentStationUrl,omitempty"`

	// Order price
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// Order quantity
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// The time of the order refunded
	// Format: date-time
	RefundedTime *strfmt.DateTime `json:"refundedTime,omitempty"`

	// Order created region
	Region string `json:"region,omitempty"`

	// Order sales tax
	// Format: int32
	SalesTax int32 `json:"salesTax,omitempty"`

	// isSandbox, indicate if order is sandbox
	// Required: true
	Sandbox *bool `json:"sandbox"`

	// Order status
	// Enum: ['CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CLOSED', 'DELETED', 'FULFILLED', 'FULFILL_FAILED', 'INIT', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED']
	// Required: true
	Status *string `json:"status"`

	// Order status reason
	StatusReason string `json:"statusReason,omitempty"`

	// subtotal price
	// Format: int32
	SubtotalPrice int32 `json:"subtotalPrice,omitempty"`

	// Order total tax
	// Format: int32
	Tax int32 `json:"tax,omitempty"`

	// total price
	// Format: int32
	TotalPrice int32 `json:"totalPrice,omitempty"`

	// total tax
	// Format: int32
	TotalTax int32 `json:"totalTax,omitempty"`

	// updatedAt
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// User id
	// Required: true
	UserID *string `json:"userId"`

	// Order VAT
	// Format: int32
	Vat int32 `json:"vat,omitempty"`
}

// Validate validates this Order info
func (m *OrderInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrency(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDiscountedPrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentRemainSeconds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSandbox(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

func (m *OrderInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validateCurrency(formats strfmt.Registry) error {

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

func (m *OrderInfo) validateDiscountedPrice(formats strfmt.Registry) error {

	if err := validate.Required("discountedPrice", "body", m.DiscountedPrice); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validateOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("orderNo", "body", m.OrderNo); err != nil {
		return err
	}

	return nil
}

var orderInfoTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		orderInfoTypePaymentProviderPropEnum = append(orderInfoTypePaymentProviderPropEnum, v)
	}
}

const (

	// OrderInfoPaymentProviderADYEN captures enum value "ADYEN"
	OrderInfoPaymentProviderADYEN string = "ADYEN"

	// OrderInfoPaymentProviderALIPAY captures enum value "ALIPAY"
	OrderInfoPaymentProviderALIPAY string = "ALIPAY"

	// OrderInfoPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	OrderInfoPaymentProviderCHECKOUT string = "CHECKOUT"

	// OrderInfoPaymentProviderPAYPAL captures enum value "PAYPAL"
	OrderInfoPaymentProviderPAYPAL string = "PAYPAL"

	// OrderInfoPaymentProviderSTRIPE captures enum value "STRIPE"
	OrderInfoPaymentProviderSTRIPE string = "STRIPE"

	// OrderInfoPaymentProviderWALLET captures enum value "WALLET"
	OrderInfoPaymentProviderWALLET string = "WALLET"

	// OrderInfoPaymentProviderWXPAY captures enum value "WXPAY"
	OrderInfoPaymentProviderWXPAY string = "WXPAY"

	// OrderInfoPaymentProviderXSOLLA captures enum value "XSOLLA"
	OrderInfoPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *OrderInfo) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, orderInfoTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *OrderInfo) validatePaymentRemainSeconds(formats strfmt.Registry) error {

	if err := validate.Required("paymentRemainSeconds", "body", m.PaymentRemainSeconds); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validateSandbox(formats strfmt.Registry) error {

	if err := validate.Required("sandbox", "body", m.Sandbox); err != nil {
		return err
	}

	return nil
}

var orderInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CLOSED", "DELETED", "FULFILLED", "FULFILL_FAILED", "INIT", "REFUNDED", "REFUNDING", "REFUND_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		orderInfoTypeStatusPropEnum = append(orderInfoTypeStatusPropEnum, v)
	}
}

const (

	// OrderInfoStatusCHARGEBACK captures enum value "CHARGEBACK"
	OrderInfoStatusCHARGEBACK string = "CHARGEBACK"

	// OrderInfoStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	OrderInfoStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// OrderInfoStatusCHARGED captures enum value "CHARGED"
	OrderInfoStatusCHARGED string = "CHARGED"

	// OrderInfoStatusCLOSED captures enum value "CLOSED"
	OrderInfoStatusCLOSED string = "CLOSED"

	// OrderInfoStatusDELETED captures enum value "DELETED"
	OrderInfoStatusDELETED string = "DELETED"

	// OrderInfoStatusFULFILLED captures enum value "FULFILLED"
	OrderInfoStatusFULFILLED string = "FULFILLED"

	// OrderInfoStatusFULFILLFAILED captures enum value "FULFILL_FAILED"
	OrderInfoStatusFULFILLFAILED string = "FULFILL_FAILED"

	// OrderInfoStatusINIT captures enum value "INIT"
	OrderInfoStatusINIT string = "INIT"

	// OrderInfoStatusREFUNDED captures enum value "REFUNDED"
	OrderInfoStatusREFUNDED string = "REFUNDED"

	// OrderInfoStatusREFUNDING captures enum value "REFUNDING"
	OrderInfoStatusREFUNDING string = "REFUNDING"

	// OrderInfoStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	OrderInfoStatusREFUNDFAILED string = "REFUND_FAILED"
)

// prop value enum
func (m *OrderInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, orderInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *OrderInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *OrderInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderInfo) UnmarshalBinary(b []byte) error {
	var res OrderInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// TradeNotification Trade notification
//
// swagger:model Trade notification.
type TradeNotification struct {

	// additional data
	AdditionalData *AdditionalData `json:"additionalData,omitempty"`

	// The time of the order authorised
	// Format: date-time
	AuthorisedTime *strfmt.DateTime `json:"authorisedTime,omitempty"`

	// The time of the order chargeback reversed
	// Format: date-time
	ChargebackReversedTime *strfmt.DateTime `json:"chargebackReversedTime,omitempty"`

	// The time of the order chargeback
	// Format: date-time
	ChargebackTime *strfmt.DateTime `json:"chargebackTime,omitempty"`

	// The time of the order charged
	// Format: date-time
	ChargedTime *strfmt.DateTime `json:"chargedTime,omitempty"`

	// The time of the order created
	// Format: date-time
	CreatedTime *strfmt.DateTime `json:"createdTime,omitempty"`

	// Payment order currency info
	// Required: true
	Currency *CurrencySummary `json:"currency"`

	// User custom parameters
	CustomParameters interface{} `json:"customParameters,omitempty"`

	// Order number
	// Required: true
	ExtOrderNo *string `json:"extOrderNo"`

	// External transaction id
	ExtTxID string `json:"extTxId,omitempty"`

	// optional, external user id, can be the character id
	ExtUserID string `json:"extUserId,omitempty"`

	// event issued at
	// Required: true
	// Format: date-time
	IssuedAt strfmt.DateTime `json:"issuedAt"`

	// metadata
	Metadata map[string]string `json:"metadata,omitempty"`

	// namespace which event issues from
	// Required: true
	Namespace *string `json:"namespace"`

	// Random string
	// Required: true
	NonceStr *string `json:"nonceStr"`

	// payment data
	PaymentData *PaymentData `json:"paymentData,omitempty"`

	// Payment method
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// Payment method fee
	// Format: int32
	PaymentMethodFee int32 `json:"paymentMethodFee,omitempty"`

	// Payment order number
	// Required: true
	PaymentOrderNo *string `json:"paymentOrderNo"`

	// Payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	// Required: true
	PaymentProvider *string `json:"paymentProvider"`

	// Payment provider fee
	// Format: int32
	PaymentProviderFee int32 `json:"paymentProviderFee,omitempty"`

	// Payment station url
	PaymentStationURL string `json:"paymentStationUrl,omitempty"`

	// Payment order price
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// The time of the order refunded
	// Format: date-time
	RefundedTime *strfmt.DateTime `json:"refundedTime,omitempty"`

	// Payment order sales tax
	// Format: int32
	SalesTax int32 `json:"salesTax,omitempty"`

	// isSandbox, indicate if order is sandbox
	// Required: true
	Sandbox *bool `json:"sandbox"`

	// optional, unique identity for the item
	Sku string `json:"sku,omitempty"`

	// Payment order status
	// Enum: ['AUTHORISED', 'AUTHORISE_FAILED', 'CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CHARGE_FAILED', 'DELETED', 'INIT', 'NOTIFICATION_OF_CHARGEBACK', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED', 'REQUEST_FOR_INFORMATION']
	// Required: true
	Status *string `json:"status"`

	// Payment order status reason
	StatusReason string `json:"statusReason,omitempty"`

	// Subscription id if exist
	SubscriptionID string `json:"subscriptionId,omitempty"`

	// subtotal price
	// Format: int32
	SubtotalPrice int32 `json:"subtotalPrice,omitempty"`

	// target namespace, usually it's the game namespace
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// target user id, usually it's the user id in game namespace
	TargetUserID string `json:"targetUserId,omitempty"`

	// Payment total tax
	// Format: int32
	Tax int32 `json:"tax,omitempty"`

	// total price
	// Format: int32
	TotalPrice int32 `json:"totalPrice,omitempty"`

	// total tax
	// Format: int32
	TotalTax int32 `json:"totalTax,omitempty"`

	// Transaction end date time
	// Format: date-time
	TxEndTime *strfmt.DateTime `json:"txEndTime,omitempty"`

	// notification type: payment
	// Required: true
	Type *string `json:"type"`

	// user id in namespace, will be null if there's targetUserId
	UserID string `json:"userId,omitempty"`

	// Payment order VAT
	// Format: int32
	Vat int32 `json:"vat,omitempty"`
}

// Validate validates this Trade notification
func (m *TradeNotification) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrency(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIssuedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNonceStr(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentProvider(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSandbox(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TradeNotification) validateCurrency(formats strfmt.Registry) error {

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

func (m *TradeNotification) validateExtOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("extOrderNo", "body", m.ExtOrderNo); err != nil {
		return err
	}

	return nil
}

func (m *TradeNotification) validateIssuedAt(formats strfmt.Registry) error {

	if err := validate.Required("issuedAt", "body", strfmt.DateTime(m.IssuedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("issuedAt", "body", "date-time", m.IssuedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *TradeNotification) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *TradeNotification) validateNonceStr(formats strfmt.Registry) error {

	if err := validate.Required("nonceStr", "body", m.NonceStr); err != nil {
		return err
	}

	return nil
}

func (m *TradeNotification) validatePaymentOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("paymentOrderNo", "body", m.PaymentOrderNo); err != nil {
		return err
	}

	return nil
}

var tradeNotificationTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		tradeNotificationTypePaymentProviderPropEnum = append(tradeNotificationTypePaymentProviderPropEnum, v)
	}
}

const (

	// TradeNotificationPaymentProviderADYEN captures enum value "ADYEN"
	TradeNotificationPaymentProviderADYEN string = "ADYEN"

	// TradeNotificationPaymentProviderALIPAY captures enum value "ALIPAY"
	TradeNotificationPaymentProviderALIPAY string = "ALIPAY"

	// TradeNotificationPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	TradeNotificationPaymentProviderCHECKOUT string = "CHECKOUT"

	// TradeNotificationPaymentProviderNEONPAY captures enum value "NEONPAY"
	TradeNotificationPaymentProviderNEONPAY string = "NEONPAY"

	// TradeNotificationPaymentProviderPAYPAL captures enum value "PAYPAL"
	TradeNotificationPaymentProviderPAYPAL string = "PAYPAL"

	// TradeNotificationPaymentProviderSTRIPE captures enum value "STRIPE"
	TradeNotificationPaymentProviderSTRIPE string = "STRIPE"

	// TradeNotificationPaymentProviderWALLET captures enum value "WALLET"
	TradeNotificationPaymentProviderWALLET string = "WALLET"

	// TradeNotificationPaymentProviderWXPAY captures enum value "WXPAY"
	TradeNotificationPaymentProviderWXPAY string = "WXPAY"

	// TradeNotificationPaymentProviderXSOLLA captures enum value "XSOLLA"
	TradeNotificationPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *TradeNotification) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, tradeNotificationTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *TradeNotification) validatePaymentProvider(formats strfmt.Registry) error {

	if err := validate.Required("paymentProvider", "body", m.PaymentProvider); err != nil {
		return err
	}

	// value enum
	if err := m.validatePaymentProviderEnum("paymentProvider", "body", *m.PaymentProvider); err != nil {
		return err
	}

	return nil
}

func (m *TradeNotification) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *TradeNotification) validateSandbox(formats strfmt.Registry) error {

	if err := validate.Required("sandbox", "body", m.Sandbox); err != nil {
		return err
	}

	return nil
}

var tradeNotificationTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTHORISED", "AUTHORISE_FAILED", "CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CHARGE_FAILED", "DELETED", "INIT", "NOTIFICATION_OF_CHARGEBACK", "REFUNDED", "REFUNDING", "REFUND_FAILED", "REQUEST_FOR_INFORMATION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		tradeNotificationTypeStatusPropEnum = append(tradeNotificationTypeStatusPropEnum, v)
	}
}

const (

	// TradeNotificationStatusAUTHORISED captures enum value "AUTHORISED"
	TradeNotificationStatusAUTHORISED string = "AUTHORISED"

	// TradeNotificationStatusAUTHORISEFAILED captures enum value "AUTHORISE_FAILED"
	TradeNotificationStatusAUTHORISEFAILED string = "AUTHORISE_FAILED"

	// TradeNotificationStatusCHARGEBACK captures enum value "CHARGEBACK"
	TradeNotificationStatusCHARGEBACK string = "CHARGEBACK"

	// TradeNotificationStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	TradeNotificationStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// TradeNotificationStatusCHARGED captures enum value "CHARGED"
	TradeNotificationStatusCHARGED string = "CHARGED"

	// TradeNotificationStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	TradeNotificationStatusCHARGEFAILED string = "CHARGE_FAILED"

	// TradeNotificationStatusDELETED captures enum value "DELETED"
	TradeNotificationStatusDELETED string = "DELETED"

	// TradeNotificationStatusINIT captures enum value "INIT"
	TradeNotificationStatusINIT string = "INIT"

	// TradeNotificationStatusNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	TradeNotificationStatusNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// TradeNotificationStatusREFUNDED captures enum value "REFUNDED"
	TradeNotificationStatusREFUNDED string = "REFUNDED"

	// TradeNotificationStatusREFUNDING captures enum value "REFUNDING"
	TradeNotificationStatusREFUNDING string = "REFUNDING"

	// TradeNotificationStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	TradeNotificationStatusREFUNDFAILED string = "REFUND_FAILED"

	// TradeNotificationStatusREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	TradeNotificationStatusREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"
)

// prop value enum
func (m *TradeNotification) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, tradeNotificationTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *TradeNotification) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *TradeNotification) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TradeNotification) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TradeNotification) UnmarshalBinary(b []byte) error {
	var res TradeNotification
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

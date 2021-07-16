// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PaymentOrderInfo payment order info
//
// swagger:model PaymentOrderInfo
type PaymentOrderInfo struct {

	// The time of the order authorised
	// Format: date-time
	AuthorisedTime strfmt.DateTime `json:"authorisedTime,omitempty"`

	// Payment order channel: EXTERNAL or INTERNAL
	// Required: true
	// Enum: [EXTERNAL INTERNAL]
	Channel *string `json:"channel"`

	// The time of the order chargeback reversed time
	// Format: date-time
	ChargebackReversedTime strfmt.DateTime `json:"chargebackReversedTime,omitempty"`

	// The time of the order chargeback time
	// Format: date-time
	ChargebackTime strfmt.DateTime `json:"chargebackTime,omitempty"`

	// The time of the order charged
	// Format: date-time
	ChargedTime strfmt.DateTime `json:"chargedTime,omitempty"`

	// if charging is true, means user have finished transaction, platform is waiting for payment notification
	Charging bool `json:"charging,omitempty"`

	// createdAt
	// Required: true
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt"`

	// The time of the order created
	// Format: date-time
	CreatedTime strfmt.DateTime `json:"createdTime,omitempty"`

	// Payment order currency info
	// Required: true
	Currency *CurrencySummary `json:"currency"`

	// User custom parameters
	CustomParameters map[string]interface{} `json:"customParameters,omitempty"`

	// Order description
	Description string `json:"description,omitempty"`

	// External order number
	// Required: true
	ExtOrderNo *string `json:"extOrderNo"`

	// optional, external user id, can be the character id
	ExtUserID string `json:"extUserId,omitempty"`

	// Order item type
	// Enum: [APP COINS INGAMEITEM BUNDLE CODE SUBSCRIPTION]
	ItemType string `json:"itemType,omitempty"`

	// Payment user language
	Language string `json:"language,omitempty"`

	// metadata
	Metadata map[string]string `json:"metadata,omitempty"`

	// Payment order namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// The notify url if customized
	NotifyURL string `json:"notifyUrl,omitempty"`

	// TEST PURPOSE, if set it will not send async notification to the API invoker, only can set true while this payment is sandbox
	OmitNotification bool `json:"omitNotification,omitempty"`

	// Payment method
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// Payment method fee
	PaymentMethodFee int32 `json:"paymentMethodFee,omitempty"`

	// Payment order number
	// Required: true
	PaymentOrderNo *string `json:"paymentOrderNo"`

	// Payment provider
	// Required: true
	// Enum: [WALLET XSOLLA ADYEN STRIPE CHECKOUT ALIPAY WXPAY PAYPAL]
	PaymentProvider *string `json:"paymentProvider"`

	// Payment provider fee
	PaymentProviderFee int32 `json:"paymentProviderFee,omitempty"`

	// Payment url
	PaymentStationURL string `json:"paymentStationUrl,omitempty"`

	// Payment order price
	// Required: true
	Price *int32 `json:"price"`

	// recurring payment order which has recurring token, will do recurring payment if present, otherwise start normal payment flow
	RecurringPaymentOrderNo string `json:"recurringPaymentOrderNo,omitempty"`

	// The time of the order refunded
	// Format: date-time
	RefundedTime strfmt.DateTime `json:"refundedTime,omitempty"`

	// Payment user region
	Region string `json:"region,omitempty"`

	// The return url if customized
	ReturnURL string `json:"returnUrl,omitempty"`

	// Payment order sales tax
	SalesTax int32 `json:"salesTax,omitempty"`

	// isSandbox, indicate if order is sandbox
	// Required: true
	Sandbox *bool `json:"sandbox"`

	// optional, unique identity for the item
	Sku string `json:"sku,omitempty"`

	// Payment order status
	// Required: true
	// Enum: [INIT AUTHORISED AUTHORISE_FAILED CHARGED CHARGE_FAILED NOTIFICATION_OF_CHARGEBACK REQUEST_FOR_INFORMATION CHARGEBACK CHARGEBACK_REVERSED REFUNDING REFUNDED REFUND_FAILED DELETED]
	Status *string `json:"status"`

	// Payment order status reason
	StatusReason string `json:"statusReason,omitempty"`

	// subscriptionId, payment token will be saved for recurring payment
	SubscriptionID string `json:"subscriptionId,omitempty"`

	// subtotal price
	SubtotalPrice int32 `json:"subtotalPrice,omitempty"`

	// The game namespace if it's an external in-game-purchase that resides in publisher namespace
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// The user id in game namespace if it's an external in-game-purchase that resides in publisher namespace
	TargetUserID string `json:"targetUserId,omitempty"`

	// Payment total tax
	Tax int32 `json:"tax,omitempty"`

	// Order title
	// Required: true
	Title *string `json:"title"`

	// total price
	TotalPrice int32 `json:"totalPrice,omitempty"`

	// total tax
	TotalTax int32 `json:"totalTax,omitempty"`

	// Payment order transactions
	Transactions []*Transaction `json:"transactions"`

	// updatedAt
	// Required: true
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt"`

	// User id
	// Required: true
	UserID *string `json:"userId"`

	// Payment order VAT
	Vat int32 `json:"vat,omitempty"`
}

// Validate validates this payment order info
func (m *PaymentOrderInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthorisedTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateChannel(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateChargebackReversedTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateChargebackTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateChargedTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCurrency(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateExtOrderNo(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
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

	if err := m.validateRefundedTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateSandbox(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTransactions(formats); err != nil {
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

func (m *PaymentOrderInfo) validateAuthorisedTime(formats strfmt.Registry) error {

	if swag.IsZero(m.AuthorisedTime) { // not required
		return nil
	}

	if err := validate.FormatOf("authorisedTime", "body", "date-time", m.AuthorisedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

var paymentOrderInfoTypeChannelPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EXTERNAL","INTERNAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderInfoTypeChannelPropEnum = append(paymentOrderInfoTypeChannelPropEnum, v)
	}
}

const (

	// PaymentOrderInfoChannelEXTERNAL captures enum value "EXTERNAL"
	PaymentOrderInfoChannelEXTERNAL string = "EXTERNAL"

	// PaymentOrderInfoChannelINTERNAL captures enum value "INTERNAL"
	PaymentOrderInfoChannelINTERNAL string = "INTERNAL"
)

// prop value enum
func (m *PaymentOrderInfo) validateChannelEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderInfoTypeChannelPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderInfo) validateChannel(formats strfmt.Registry) error {

	if err := validate.Required("channel", "body", m.Channel); err != nil {
		return err
	}

	// value enum
	if err := m.validateChannelEnum("channel", "body", *m.Channel); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateChargebackReversedTime(formats strfmt.Registry) error {

	if swag.IsZero(m.ChargebackReversedTime) { // not required
		return nil
	}

	if err := validate.FormatOf("chargebackReversedTime", "body", "date-time", m.ChargebackReversedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateChargebackTime(formats strfmt.Registry) error {

	if swag.IsZero(m.ChargebackTime) { // not required
		return nil
	}

	if err := validate.FormatOf("chargebackTime", "body", "date-time", m.ChargebackTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateChargedTime(formats strfmt.Registry) error {

	if swag.IsZero(m.ChargedTime) { // not required
		return nil
	}

	if err := validate.FormatOf("chargedTime", "body", "date-time", m.ChargedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateCreatedTime(formats strfmt.Registry) error {

	if swag.IsZero(m.CreatedTime) { // not required
		return nil
	}

	if err := validate.FormatOf("createdTime", "body", "date-time", m.CreatedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateCurrency(formats strfmt.Registry) error {

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

func (m *PaymentOrderInfo) validateExtOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("extOrderNo", "body", m.ExtOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentOrderInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP","COINS","INGAMEITEM","BUNDLE","CODE","SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderInfoTypeItemTypePropEnum = append(paymentOrderInfoTypeItemTypePropEnum, v)
	}
}

const (

	// PaymentOrderInfoItemTypeAPP captures enum value "APP"
	PaymentOrderInfoItemTypeAPP string = "APP"

	// PaymentOrderInfoItemTypeCOINS captures enum value "COINS"
	PaymentOrderInfoItemTypeCOINS string = "COINS"

	// PaymentOrderInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	PaymentOrderInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// PaymentOrderInfoItemTypeBUNDLE captures enum value "BUNDLE"
	PaymentOrderInfoItemTypeBUNDLE string = "BUNDLE"

	// PaymentOrderInfoItemTypeCODE captures enum value "CODE"
	PaymentOrderInfoItemTypeCODE string = "CODE"

	// PaymentOrderInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	PaymentOrderInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *PaymentOrderInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderInfo) validateItemType(formats strfmt.Registry) error {

	if swag.IsZero(m.ItemType) { // not required
		return nil
	}

	// value enum
	if err := m.validateItemTypeEnum("itemType", "body", m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validatePaymentOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("paymentOrderNo", "body", m.PaymentOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentOrderInfoTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["WALLET","XSOLLA","ADYEN","STRIPE","CHECKOUT","ALIPAY","WXPAY","PAYPAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderInfoTypePaymentProviderPropEnum = append(paymentOrderInfoTypePaymentProviderPropEnum, v)
	}
}

const (

	// PaymentOrderInfoPaymentProviderWALLET captures enum value "WALLET"
	PaymentOrderInfoPaymentProviderWALLET string = "WALLET"

	// PaymentOrderInfoPaymentProviderXSOLLA captures enum value "XSOLLA"
	PaymentOrderInfoPaymentProviderXSOLLA string = "XSOLLA"

	// PaymentOrderInfoPaymentProviderADYEN captures enum value "ADYEN"
	PaymentOrderInfoPaymentProviderADYEN string = "ADYEN"

	// PaymentOrderInfoPaymentProviderSTRIPE captures enum value "STRIPE"
	PaymentOrderInfoPaymentProviderSTRIPE string = "STRIPE"

	// PaymentOrderInfoPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	PaymentOrderInfoPaymentProviderCHECKOUT string = "CHECKOUT"

	// PaymentOrderInfoPaymentProviderALIPAY captures enum value "ALIPAY"
	PaymentOrderInfoPaymentProviderALIPAY string = "ALIPAY"

	// PaymentOrderInfoPaymentProviderWXPAY captures enum value "WXPAY"
	PaymentOrderInfoPaymentProviderWXPAY string = "WXPAY"

	// PaymentOrderInfoPaymentProviderPAYPAL captures enum value "PAYPAL"
	PaymentOrderInfoPaymentProviderPAYPAL string = "PAYPAL"
)

// prop value enum
func (m *PaymentOrderInfo) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderInfoTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderInfo) validatePaymentProvider(formats strfmt.Registry) error {

	if err := validate.Required("paymentProvider", "body", m.PaymentProvider); err != nil {
		return err
	}

	// value enum
	if err := m.validatePaymentProviderEnum("paymentProvider", "body", *m.PaymentProvider); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateRefundedTime(formats strfmt.Registry) error {

	if swag.IsZero(m.RefundedTime) { // not required
		return nil
	}

	if err := validate.FormatOf("refundedTime", "body", "date-time", m.RefundedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateSandbox(formats strfmt.Registry) error {

	if err := validate.Required("sandbox", "body", m.Sandbox); err != nil {
		return err
	}

	return nil
}

var paymentOrderInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INIT","AUTHORISED","AUTHORISE_FAILED","CHARGED","CHARGE_FAILED","NOTIFICATION_OF_CHARGEBACK","REQUEST_FOR_INFORMATION","CHARGEBACK","CHARGEBACK_REVERSED","REFUNDING","REFUNDED","REFUND_FAILED","DELETED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderInfoTypeStatusPropEnum = append(paymentOrderInfoTypeStatusPropEnum, v)
	}
}

const (

	// PaymentOrderInfoStatusINIT captures enum value "INIT"
	PaymentOrderInfoStatusINIT string = "INIT"

	// PaymentOrderInfoStatusAUTHORISED captures enum value "AUTHORISED"
	PaymentOrderInfoStatusAUTHORISED string = "AUTHORISED"

	// PaymentOrderInfoStatusAUTHORISEFAILED captures enum value "AUTHORISE_FAILED"
	PaymentOrderInfoStatusAUTHORISEFAILED string = "AUTHORISE_FAILED"

	// PaymentOrderInfoStatusCHARGED captures enum value "CHARGED"
	PaymentOrderInfoStatusCHARGED string = "CHARGED"

	// PaymentOrderInfoStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	PaymentOrderInfoStatusCHARGEFAILED string = "CHARGE_FAILED"

	// PaymentOrderInfoStatusNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	PaymentOrderInfoStatusNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// PaymentOrderInfoStatusREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	PaymentOrderInfoStatusREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"

	// PaymentOrderInfoStatusCHARGEBACK captures enum value "CHARGEBACK"
	PaymentOrderInfoStatusCHARGEBACK string = "CHARGEBACK"

	// PaymentOrderInfoStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	PaymentOrderInfoStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// PaymentOrderInfoStatusREFUNDING captures enum value "REFUNDING"
	PaymentOrderInfoStatusREFUNDING string = "REFUNDING"

	// PaymentOrderInfoStatusREFUNDED captures enum value "REFUNDED"
	PaymentOrderInfoStatusREFUNDED string = "REFUNDED"

	// PaymentOrderInfoStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	PaymentOrderInfoStatusREFUNDFAILED string = "REFUND_FAILED"

	// PaymentOrderInfoStatusDELETED captures enum value "DELETED"
	PaymentOrderInfoStatusDELETED string = "DELETED"
)

// prop value enum
func (m *PaymentOrderInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateTransactions(formats strfmt.Registry) error {

	if swag.IsZero(m.Transactions) { // not required
		return nil
	}

	for i := 0; i < len(m.Transactions); i++ {
		if swag.IsZero(m.Transactions[i]) { // not required
			continue
		}

		if m.Transactions[i] != nil {
			if err := m.Transactions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("transactions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *PaymentOrderInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderInfo) UnmarshalBinary(b []byte) error {
	var res PaymentOrderInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

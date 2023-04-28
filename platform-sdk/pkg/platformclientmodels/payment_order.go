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

// PaymentOrder Payment order
//
// swagger:model Payment order.
type PaymentOrder struct {

	// authorisedtime
	// Format: date-time
	AuthorisedTime *strfmt.DateTime `json:"authorisedTime,omitempty"`

	// channel
	// Enum: ['EXTERNAL', 'INTERNAL']
	Channel string `json:"channel,omitempty"`

	// chargebackreversedtime
	// Format: date-time
	ChargebackReversedTime *strfmt.DateTime `json:"chargebackReversedTime,omitempty"`

	// chargebacktime
	// Format: date-time
	ChargebackTime *strfmt.DateTime `json:"chargebackTime,omitempty"`

	// chargedtime
	// Format: date-time
	ChargedTime *strfmt.DateTime `json:"chargedTime,omitempty"`

	// charging
	Charging bool `json:"charging"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// createdtime
	// Format: date-time
	CreatedTime *strfmt.DateTime `json:"createdTime,omitempty"`

	// currency
	Currency *CurrencySummary `json:"currency,omitempty"`

	// customparameters
	CustomParameters interface{} `json:"customParameters,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// extorderno
	ExtOrderNo string `json:"extOrderNo,omitempty"`

	// extuserid
	ExtUserID string `json:"extUserId,omitempty"`

	// itemtype
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// language
	Language string `json:"language,omitempty"`

	// metadata
	Metadata map[string]string `json:"metadata,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// notifyurl
	NotifyURL string `json:"notifyUrl,omitempty"`

	// omitnotification
	OmitNotification bool `json:"omitNotification"`

	// paymentmethod
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// paymentmethodfee
	// Format: int32
	PaymentMethodFee int32 `json:"paymentMethodFee,omitempty"`

	// paymentorderno
	PaymentOrderNo string `json:"paymentOrderNo,omitempty"`

	// paymentprovider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	PaymentProvider string `json:"paymentProvider,omitempty"`

	// paymentproviderfee
	// Format: int32
	PaymentProviderFee int32 `json:"paymentProviderFee,omitempty"`

	// paymentstationurl
	PaymentStationURL string `json:"paymentStationUrl,omitempty"`

	// platform
	Platform string `json:"platform,omitempty"`

	// price
	// Format: int32
	Price int32 `json:"price,omitempty"`

	// recurringpaymentorderno
	RecurringPaymentOrderNo string `json:"recurringPaymentOrderNo,omitempty"`

	// refundedtime
	// Format: date-time
	RefundedTime *strfmt.DateTime `json:"refundedTime,omitempty"`

	// region
	Region string `json:"region,omitempty"`

	// returnurl
	ReturnURL string `json:"returnUrl,omitempty"`

	// rvn
	// Format: int32
	Rvn int32 `json:"rvn,omitempty"`

	// salestax
	// Format: int32
	SalesTax int32 `json:"salesTax,omitempty"`

	// sandbox
	Sandbox bool `json:"sandbox"`

	// sku
	Sku string `json:"sku,omitempty"`

	// state
	State string `json:"state,omitempty"`

	// status
	// Enum: ['AUTHORISED', 'AUTHORISE_FAILED', 'CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CHARGE_FAILED', 'DELETED', 'INIT', 'NOTIFICATION_OF_CHARGEBACK', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED', 'REQUEST_FOR_INFORMATION']
	Status string `json:"status,omitempty"`

	// statusreason
	StatusReason string `json:"statusReason,omitempty"`

	// subscriptionid
	SubscriptionID string `json:"subscriptionId,omitempty"`

	// subtotalprice
	// Format: int32
	SubtotalPrice int32 `json:"subtotalPrice,omitempty"`

	// targetnamespace
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// targetuserid
	TargetUserID string `json:"targetUserId,omitempty"`

	// tax
	// Format: int32
	Tax int32 `json:"tax,omitempty"`

	// title
	Title string `json:"title,omitempty"`

	// totalprice
	// Format: int32
	TotalPrice int32 `json:"totalPrice,omitempty"`

	// totaltax
	// Format: int32
	TotalTax int32 `json:"totalTax,omitempty"`

	// transactions
	Transactions []*Transaction `json:"transactions,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`

	// vat
	// Format: int32
	Vat int32 `json:"vat,omitempty"`

	// zipcode
	ZipCode string `json:"zipCode,omitempty"`
}

// Validate validates this Payment order
func (m *PaymentOrder) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var paymentOrderTypeChannelPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EXTERNAL", "INTERNAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderTypeChannelPropEnum = append(paymentOrderTypeChannelPropEnum, v)
	}
}

const (

	// PaymentOrderChannelEXTERNAL captures enum value "EXTERNAL"
	PaymentOrderChannelEXTERNAL string = "EXTERNAL"

	// PaymentOrderChannelINTERNAL captures enum value "INTERNAL"
	PaymentOrderChannelINTERNAL string = "INTERNAL"
)

// prop value enum
func (m *PaymentOrder) validateChannelEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderTypeChannelPropEnum, true); err != nil {
		return err
	}
	return nil
}

var paymentOrderTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderTypeItemTypePropEnum = append(paymentOrderTypeItemTypePropEnum, v)
	}
}

const (

	// PaymentOrderItemTypeAPP captures enum value "APP"
	PaymentOrderItemTypeAPP string = "APP"

	// PaymentOrderItemTypeBUNDLE captures enum value "BUNDLE"
	PaymentOrderItemTypeBUNDLE string = "BUNDLE"

	// PaymentOrderItemTypeCODE captures enum value "CODE"
	PaymentOrderItemTypeCODE string = "CODE"

	// PaymentOrderItemTypeCOINS captures enum value "COINS"
	PaymentOrderItemTypeCOINS string = "COINS"

	// PaymentOrderItemTypeEXTENSION captures enum value "EXTENSION"
	PaymentOrderItemTypeEXTENSION string = "EXTENSION"

	// PaymentOrderItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	PaymentOrderItemTypeINGAMEITEM string = "INGAMEITEM"

	// PaymentOrderItemTypeLOOTBOX captures enum value "LOOTBOX"
	PaymentOrderItemTypeLOOTBOX string = "LOOTBOX"

	// PaymentOrderItemTypeMEDIA captures enum value "MEDIA"
	PaymentOrderItemTypeMEDIA string = "MEDIA"

	// PaymentOrderItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	PaymentOrderItemTypeOPTIONBOX string = "OPTIONBOX"

	// PaymentOrderItemTypeSEASON captures enum value "SEASON"
	PaymentOrderItemTypeSEASON string = "SEASON"

	// PaymentOrderItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	PaymentOrderItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *PaymentOrder) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var paymentOrderTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderTypePaymentProviderPropEnum = append(paymentOrderTypePaymentProviderPropEnum, v)
	}
}

const (

	// PaymentOrderPaymentProviderADYEN captures enum value "ADYEN"
	PaymentOrderPaymentProviderADYEN string = "ADYEN"

	// PaymentOrderPaymentProviderALIPAY captures enum value "ALIPAY"
	PaymentOrderPaymentProviderALIPAY string = "ALIPAY"

	// PaymentOrderPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	PaymentOrderPaymentProviderCHECKOUT string = "CHECKOUT"

	// PaymentOrderPaymentProviderPAYPAL captures enum value "PAYPAL"
	PaymentOrderPaymentProviderPAYPAL string = "PAYPAL"

	// PaymentOrderPaymentProviderSTRIPE captures enum value "STRIPE"
	PaymentOrderPaymentProviderSTRIPE string = "STRIPE"

	// PaymentOrderPaymentProviderWALLET captures enum value "WALLET"
	PaymentOrderPaymentProviderWALLET string = "WALLET"

	// PaymentOrderPaymentProviderWXPAY captures enum value "WXPAY"
	PaymentOrderPaymentProviderWXPAY string = "WXPAY"

	// PaymentOrderPaymentProviderXSOLLA captures enum value "XSOLLA"
	PaymentOrderPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentOrder) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

var paymentOrderTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTHORISED", "AUTHORISE_FAILED", "CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CHARGE_FAILED", "DELETED", "INIT", "NOTIFICATION_OF_CHARGEBACK", "REFUNDED", "REFUNDING", "REFUND_FAILED", "REQUEST_FOR_INFORMATION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderTypeStatusPropEnum = append(paymentOrderTypeStatusPropEnum, v)
	}
}

const (

	// PaymentOrderStatusAUTHORISED captures enum value "AUTHORISED"
	PaymentOrderStatusAUTHORISED string = "AUTHORISED"

	// PaymentOrderStatusAUTHORISEFAILED captures enum value "AUTHORISE_FAILED"
	PaymentOrderStatusAUTHORISEFAILED string = "AUTHORISE_FAILED"

	// PaymentOrderStatusCHARGEBACK captures enum value "CHARGEBACK"
	PaymentOrderStatusCHARGEBACK string = "CHARGEBACK"

	// PaymentOrderStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	PaymentOrderStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// PaymentOrderStatusCHARGED captures enum value "CHARGED"
	PaymentOrderStatusCHARGED string = "CHARGED"

	// PaymentOrderStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	PaymentOrderStatusCHARGEFAILED string = "CHARGE_FAILED"

	// PaymentOrderStatusDELETED captures enum value "DELETED"
	PaymentOrderStatusDELETED string = "DELETED"

	// PaymentOrderStatusINIT captures enum value "INIT"
	PaymentOrderStatusINIT string = "INIT"

	// PaymentOrderStatusNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	PaymentOrderStatusNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// PaymentOrderStatusREFUNDED captures enum value "REFUNDED"
	PaymentOrderStatusREFUNDED string = "REFUNDED"

	// PaymentOrderStatusREFUNDING captures enum value "REFUNDING"
	PaymentOrderStatusREFUNDING string = "REFUNDING"

	// PaymentOrderStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	PaymentOrderStatusREFUNDFAILED string = "REFUND_FAILED"

	// PaymentOrderStatusREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	PaymentOrderStatusREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"
)

// prop value enum
func (m *PaymentOrder) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrder) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrder) UnmarshalBinary(b []byte) error {
	var res PaymentOrder
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

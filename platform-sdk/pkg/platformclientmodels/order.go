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

// Order Order
//
// swagger:model Order.
type Order struct {

	// chargebackreversedtime
	// Format: date-time
	ChargebackReversedTime *strfmt.DateTime `json:"chargebackReversedTime,omitempty"`

	// chargebacktime
	// Format: date-time
	ChargebackTime *strfmt.DateTime `json:"chargebackTime,omitempty"`

	// charged
	Charged bool `json:"charged"`

	// chargedtime
	// Format: date-time
	ChargedTime *strfmt.DateTime `json:"chargedTime,omitempty"`

	// countitemid
	CountItemID string `json:"countItemId,omitempty"`

	// countnamespace
	CountNamespace string `json:"countNamespace,omitempty"`

	// countuserid
	CountUserID string `json:"countUserId,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// createdtime
	// Format: date-time
	CreatedTime *strfmt.DateTime `json:"createdTime,omitempty"`

	// creationoptions
	CreationOptions *OrderCreationOptions `json:"creationOptions,omitempty"`

	// currency
	Currency *CurrencySummary `json:"currency,omitempty"`

	// deduction
	// Format: int32
	Deduction int32 `json:"deduction,omitempty"`

	// deductiondetails
	DeductionDetails []*DeductionDetail `json:"deductionDetails,omitempty"`

	// discountedprice
	// Format: int32
	DiscountedPrice int32 `json:"discountedPrice,omitempty"`

	// expiretime
	// Format: date-time
	ExpireTime *strfmt.DateTime `json:"expireTime,omitempty"`

	// ext
	Ext interface{} `json:"ext,omitempty"`

	// finalprice
	// Format: int32
	FinalPrice int32 `json:"finalPrice,omitempty"`

	// free
	Free bool `json:"free"`

	// fulfilledtime
	// Format: date-time
	FulfilledTime *strfmt.DateTime `json:"fulfilledTime,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemsnapshot
	ItemSnapshot *ItemSnapshot `json:"itemSnapshot,omitempty"`

	// language
	Language string `json:"language,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// orderbundleiteminfos
	OrderBundleItemInfos []*OrderBundleItemInfo `json:"orderBundleItemInfos,omitempty"`

	// orderno
	OrderNo string `json:"orderNo,omitempty"`

	// paymentdata
	PaymentData *PaymentData `json:"paymentData,omitempty"`

	// paymentmethod
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// paymentmethodfee
	// Format: int32
	PaymentMethodFee int32 `json:"paymentMethodFee,omitempty"`

	// paymentorderno
	PaymentOrderNo string `json:"paymentOrderNo,omitempty"`

	// paymentprovider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	PaymentProvider string `json:"paymentProvider,omitempty"`

	// paymentproviderfee
	// Format: int32
	PaymentProviderFee int32 `json:"paymentProviderFee,omitempty"`

	// paymentremainseconds
	// Format: int32
	PaymentRemainSeconds int32 `json:"paymentRemainSeconds,omitempty"`

	// paymentstationurl
	PaymentStationURL string `json:"paymentStationUrl,omitempty"`

	// price
	// Format: int32
	Price int32 `json:"price,omitempty"`

	// quantity
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

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

	// status
	// Enum: ['CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CLOSED', 'DELETED', 'FULFILLED', 'FULFILL_FAILED', 'INIT', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED']
	Status string `json:"status,omitempty"`

	// statusreason
	StatusReason string `json:"statusReason,omitempty"`

	// subtotalprice
	// Format: int32
	SubtotalPrice int32 `json:"subtotalPrice,omitempty"`

	// tax
	// Format: int32
	Tax int32 `json:"tax,omitempty"`

	// totalprice
	// Format: int32
	TotalPrice int32 `json:"totalPrice,omitempty"`

	// totaltax
	// Format: int32
	TotalTax int32 `json:"totalTax,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`

	// vat
	// Format: int32
	Vat int32 `json:"vat,omitempty"`
}

// Validate validates this Order
func (m *Order) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var orderTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		orderTypePaymentProviderPropEnum = append(orderTypePaymentProviderPropEnum, v)
	}
}

const (

	// OrderPaymentProviderADYEN captures enum value "ADYEN"
	OrderPaymentProviderADYEN string = "ADYEN"

	// OrderPaymentProviderALIPAY captures enum value "ALIPAY"
	OrderPaymentProviderALIPAY string = "ALIPAY"

	// OrderPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	OrderPaymentProviderCHECKOUT string = "CHECKOUT"

	// OrderPaymentProviderNEONPAY captures enum value "NEONPAY"
	OrderPaymentProviderNEONPAY string = "NEONPAY"

	// OrderPaymentProviderPAYPAL captures enum value "PAYPAL"
	OrderPaymentProviderPAYPAL string = "PAYPAL"

	// OrderPaymentProviderSTRIPE captures enum value "STRIPE"
	OrderPaymentProviderSTRIPE string = "STRIPE"

	// OrderPaymentProviderWALLET captures enum value "WALLET"
	OrderPaymentProviderWALLET string = "WALLET"

	// OrderPaymentProviderWXPAY captures enum value "WXPAY"
	OrderPaymentProviderWXPAY string = "WXPAY"

	// OrderPaymentProviderXSOLLA captures enum value "XSOLLA"
	OrderPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *Order) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, orderTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

var orderTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CLOSED", "DELETED", "FULFILLED", "FULFILL_FAILED", "INIT", "REFUNDED", "REFUNDING", "REFUND_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		orderTypeStatusPropEnum = append(orderTypeStatusPropEnum, v)
	}
}

const (

	// OrderStatusCHARGEBACK captures enum value "CHARGEBACK"
	OrderStatusCHARGEBACK string = "CHARGEBACK"

	// OrderStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	OrderStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// OrderStatusCHARGED captures enum value "CHARGED"
	OrderStatusCHARGED string = "CHARGED"

	// OrderStatusCLOSED captures enum value "CLOSED"
	OrderStatusCLOSED string = "CLOSED"

	// OrderStatusDELETED captures enum value "DELETED"
	OrderStatusDELETED string = "DELETED"

	// OrderStatusFULFILLED captures enum value "FULFILLED"
	OrderStatusFULFILLED string = "FULFILLED"

	// OrderStatusFULFILLFAILED captures enum value "FULFILL_FAILED"
	OrderStatusFULFILLFAILED string = "FULFILL_FAILED"

	// OrderStatusINIT captures enum value "INIT"
	OrderStatusINIT string = "INIT"

	// OrderStatusREFUNDED captures enum value "REFUNDED"
	OrderStatusREFUNDED string = "REFUNDED"

	// OrderStatusREFUNDING captures enum value "REFUNDING"
	OrderStatusREFUNDING string = "REFUNDING"

	// OrderStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	OrderStatusREFUNDFAILED string = "REFUND_FAILED"
)

// prop value enum
func (m *Order) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, orderTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *Order) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Order) UnmarshalBinary(b []byte) error {
	var res Order
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

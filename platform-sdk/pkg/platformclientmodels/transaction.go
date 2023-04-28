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

// Transaction Transaction
//
// swagger:model Transaction.
type Transaction struct {

	// additionaldata
	AdditionalData *AdditionalData `json:"additionalData,omitempty"`

	// amount
	// Format: int32
	Amount int32 `json:"amount,omitempty"`

	// currency
	Currency *CurrencySummary `json:"currency,omitempty"`

	// extmessage
	ExtMessage string `json:"extMessage,omitempty"`

	// extstatuscode
	ExtStatusCode string `json:"extStatusCode,omitempty"`

	// exttxid
	ExtTxID string `json:"extTxId,omitempty"`

	// merchantid
	MerchantID string `json:"merchantId,omitempty"`

	// notified
	Notified bool `json:"notified"`

	// paymentmethod
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// paymentmethodfee
	// Format: int32
	PaymentMethodFee int32 `json:"paymentMethodFee,omitempty"`

	// paymentproviderfee
	// Format: int32
	PaymentProviderFee int32 `json:"paymentProviderFee,omitempty"`

	// provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	Provider string `json:"provider,omitempty"`

	// salestax
	// Format: int32
	SalesTax int32 `json:"salesTax,omitempty"`

	// status
	// Enum: ['FAILED', 'FINISHED']
	Status string `json:"status,omitempty"`

	// tax
	// Format: int32
	Tax int32 `json:"tax,omitempty"`

	// txendtime
	// Format: date-time
	TxEndTime *strfmt.DateTime `json:"txEndTime,omitempty"`

	// txid
	TxID string `json:"txId,omitempty"`

	// type
	// Enum: ['AUTHORISATION', 'CHARGE', 'CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGE_FAILED', 'NOTIFICATION_OF_CHARGEBACK', 'REFUND', 'REFUND_FAILED', 'REQUEST_FOR_INFORMATION']
	Type string `json:"type,omitempty"`

	// vat
	// Format: int32
	Vat int32 `json:"vat,omitempty"`
}

// Validate validates this Transaction
func (m *Transaction) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var transactionTypeProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		transactionTypeProviderPropEnum = append(transactionTypeProviderPropEnum, v)
	}
}

const (

	// TransactionProviderADYEN captures enum value "ADYEN"
	TransactionProviderADYEN string = "ADYEN"

	// TransactionProviderALIPAY captures enum value "ALIPAY"
	TransactionProviderALIPAY string = "ALIPAY"

	// TransactionProviderCHECKOUT captures enum value "CHECKOUT"
	TransactionProviderCHECKOUT string = "CHECKOUT"

	// TransactionProviderPAYPAL captures enum value "PAYPAL"
	TransactionProviderPAYPAL string = "PAYPAL"

	// TransactionProviderSTRIPE captures enum value "STRIPE"
	TransactionProviderSTRIPE string = "STRIPE"

	// TransactionProviderWALLET captures enum value "WALLET"
	TransactionProviderWALLET string = "WALLET"

	// TransactionProviderWXPAY captures enum value "WXPAY"
	TransactionProviderWXPAY string = "WXPAY"

	// TransactionProviderXSOLLA captures enum value "XSOLLA"
	TransactionProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *Transaction) validateProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, transactionTypeProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

var transactionTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "FINISHED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		transactionTypeStatusPropEnum = append(transactionTypeStatusPropEnum, v)
	}
}

const (

	// TransactionStatusFAILED captures enum value "FAILED"
	TransactionStatusFAILED string = "FAILED"

	// TransactionStatusFINISHED captures enum value "FINISHED"
	TransactionStatusFINISHED string = "FINISHED"
)

// prop value enum
func (m *Transaction) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, transactionTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

var transactionTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTHORISATION", "CHARGE", "CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGE_FAILED", "NOTIFICATION_OF_CHARGEBACK", "REFUND", "REFUND_FAILED", "REQUEST_FOR_INFORMATION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		transactionTypeTypePropEnum = append(transactionTypeTypePropEnum, v)
	}
}

const (

	// TransactionTypeAUTHORISATION captures enum value "AUTHORISATION"
	TransactionTypeAUTHORISATION string = "AUTHORISATION"

	// TransactionTypeCHARGE captures enum value "CHARGE"
	TransactionTypeCHARGE string = "CHARGE"

	// TransactionTypeCHARGEBACK captures enum value "CHARGEBACK"
	TransactionTypeCHARGEBACK string = "CHARGEBACK"

	// TransactionTypeCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	TransactionTypeCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// TransactionTypeCHARGEFAILED captures enum value "CHARGE_FAILED"
	TransactionTypeCHARGEFAILED string = "CHARGE_FAILED"

	// TransactionTypeNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	TransactionTypeNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// TransactionTypeREFUND captures enum value "REFUND"
	TransactionTypeREFUND string = "REFUND"

	// TransactionTypeREFUNDFAILED captures enum value "REFUND_FAILED"
	TransactionTypeREFUNDFAILED string = "REFUND_FAILED"

	// TransactionTypeREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	TransactionTypeREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"
)

// prop value enum
func (m *Transaction) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, transactionTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *Transaction) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Transaction) UnmarshalBinary(b []byte) error {
	var res Transaction
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

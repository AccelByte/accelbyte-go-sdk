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

// IAPOrderInfo IAP order info
//
// swagger:model IAP order info.
type IAPOrderInfo struct {

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// credit summary
	Credits []*CreditSummary `json:"credits,omitempty"`

	// currency code
	CurrencyCode string `json:"currencyCode,omitempty"`

	// entitlement summary
	Entitlements []*EntitlementSummary `json:"entitlements,omitempty"`

	// fulfill time if fulfilled
	// Format: date-time
	FulfilledTime *strfmt.DateTime `json:"fulfilledTime,omitempty"`

	// iap order No
	// Required: true
	IAPOrderNo *string `json:"iapOrderNo"`

	// language
	Language string `json:"language,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// price
	// Format: double
	Price float64 `json:"price,omitempty"`

	// product id
	ProductID string `json:"productId,omitempty"`

	// quantity
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// receipt data
	ReceiptData string `json:"receiptData,omitempty"`

	// region
	Region string `json:"region,omitempty"`

	// retry count
	// Format: int32
	RetryCount int32 `json:"retryCount,omitempty"`

	// sandbox
	Sandbox bool `json:"sandbox"`

	// status
	// Enum: ['FAILED', 'FULFILLED', 'PARTIAL_REVOKED', 'REVOKED', 'REVOKE_FAILED', 'VERIFIED']
	// Required: true
	Status *string `json:"status"`

	// status reason
	StatusReason string `json:"statusReason,omitempty"`

	// sync mode, only steam have this value currently.
	// Enum: ['INVENTORY', 'TRANSACTION']
	SyncMode string `json:"syncMode,omitempty"`

	// transaction id
	TransactionID string `json:"transactionId,omitempty"`

	// IAP type
	// Enum: ['APPLE', 'EPICGAMES', 'GOOGLE', 'OCULUS', 'PLAYSTATION', 'STADIA', 'STEAM', 'TWITCH', 'XBOX']
	// Required: true
	Type *string `json:"type"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this IAP order info
func (m *IAPOrderInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIAPOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
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

func (m *IAPOrderInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *IAPOrderInfo) validateIAPOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("iapOrderNo", "body", m.IAPOrderNo); err != nil {
		return err
	}

	return nil
}

func (m *IAPOrderInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var iapOrderInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "FULFILLED", "PARTIAL_REVOKED", "REVOKED", "REVOKE_FAILED", "VERIFIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapOrderInfoTypeStatusPropEnum = append(iapOrderInfoTypeStatusPropEnum, v)
	}
}

const (

	// IAPOrderInfoStatusFAILED captures enum value "FAILED"
	IAPOrderInfoStatusFAILED string = "FAILED"

	// IAPOrderInfoStatusFULFILLED captures enum value "FULFILLED"
	IAPOrderInfoStatusFULFILLED string = "FULFILLED"

	// IAPOrderInfoStatusPARTIALREVOKED captures enum value "PARTIAL_REVOKED"
	IAPOrderInfoStatusPARTIALREVOKED string = "PARTIAL_REVOKED"

	// IAPOrderInfoStatusREVOKED captures enum value "REVOKED"
	IAPOrderInfoStatusREVOKED string = "REVOKED"

	// IAPOrderInfoStatusREVOKEFAILED captures enum value "REVOKE_FAILED"
	IAPOrderInfoStatusREVOKEFAILED string = "REVOKE_FAILED"

	// IAPOrderInfoStatusVERIFIED captures enum value "VERIFIED"
	IAPOrderInfoStatusVERIFIED string = "VERIFIED"
)

// prop value enum
func (m *IAPOrderInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapOrderInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *IAPOrderInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var iapOrderInfoTypeSyncModePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INVENTORY", "TRANSACTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapOrderInfoTypeSyncModePropEnum = append(iapOrderInfoTypeSyncModePropEnum, v)
	}
}

const (

	// IAPOrderInfoSyncModeINVENTORY captures enum value "INVENTORY"
	IAPOrderInfoSyncModeINVENTORY string = "INVENTORY"

	// IAPOrderInfoSyncModeTRANSACTION captures enum value "TRANSACTION"
	IAPOrderInfoSyncModeTRANSACTION string = "TRANSACTION"
)

// prop value enum
func (m *IAPOrderInfo) validateSyncModeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapOrderInfoTypeSyncModePropEnum, true); err != nil {
		return err
	}
	return nil
}

var iapOrderInfoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APPLE", "EPICGAMES", "GOOGLE", "OCULUS", "PLAYSTATION", "STADIA", "STEAM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapOrderInfoTypeTypePropEnum = append(iapOrderInfoTypeTypePropEnum, v)
	}
}

const (

	// IAPOrderInfoTypeAPPLE captures enum value "APPLE"
	IAPOrderInfoTypeAPPLE string = "APPLE"

	// IAPOrderInfoTypeEPICGAMES captures enum value "EPICGAMES"
	IAPOrderInfoTypeEPICGAMES string = "EPICGAMES"

	// IAPOrderInfoTypeGOOGLE captures enum value "GOOGLE"
	IAPOrderInfoTypeGOOGLE string = "GOOGLE"

	// IAPOrderInfoTypeOCULUS captures enum value "OCULUS"
	IAPOrderInfoTypeOCULUS string = "OCULUS"

	// IAPOrderInfoTypePLAYSTATION captures enum value "PLAYSTATION"
	IAPOrderInfoTypePLAYSTATION string = "PLAYSTATION"

	// IAPOrderInfoTypeSTADIA captures enum value "STADIA"
	IAPOrderInfoTypeSTADIA string = "STADIA"

	// IAPOrderInfoTypeSTEAM captures enum value "STEAM"
	IAPOrderInfoTypeSTEAM string = "STEAM"

	// IAPOrderInfoTypeTWITCH captures enum value "TWITCH"
	IAPOrderInfoTypeTWITCH string = "TWITCH"

	// IAPOrderInfoTypeXBOX captures enum value "XBOX"
	IAPOrderInfoTypeXBOX string = "XBOX"
)

// prop value enum
func (m *IAPOrderInfo) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapOrderInfoTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *IAPOrderInfo) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

func (m *IAPOrderInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *IAPOrderInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *IAPOrderInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPOrderInfo) UnmarshalBinary(b []byte) error {
	var res IAPOrderInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

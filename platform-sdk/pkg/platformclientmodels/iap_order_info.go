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

// IAPOrderInfo IAP order info
//
// swagger:model IAPOrderInfo
type IAPOrderInfo struct {

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// credit summary
	Credits []*CreditSummary `json:"credits"`

	// currency code
	CurrencyCode string `json:"currencyCode,omitempty"`

	// entitlement summary
	Entitlements []*EntitlementSummary `json:"entitlements"`

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
	Price float64 `json:"price,omitempty"`

	// product id
	ProductID string `json:"productId,omitempty"`

	// quantity
	Quantity int32 `json:"quantity,omitempty"`

	// receipt data
	ReceiptData string `json:"receiptData,omitempty"`

	// region
	Region string `json:"region,omitempty"`

	// retry count
	RetryCount int32 `json:"retryCount,omitempty"`

	// sandbox
	Sandbox bool `json:"sandbox"`

	// status
	// Required: true
	// Enum: [FAILED FULFILLED VERIFIED]
	Status *string `json:"status"`

	// status reason
	StatusReason string `json:"statusReason,omitempty"`

	// transaction id
	TransactionID string `json:"transactionId,omitempty"`

	// IAP type
	// Required: true
	// Enum: [APPLE EPICGAMES GOOGLE PLAYSTATION STADIA STEAM TWITCH XBOX]
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

	if err := m.validateCredits(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEntitlements(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateFulfilledTime(formats); err != nil {
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

func (m *IAPOrderInfo) validateCredits(formats strfmt.Registry) error {

	if swag.IsZero(m.Credits) { // not required
		return nil
	}

	for i := 0; i < len(m.Credits); i++ {
		if swag.IsZero(m.Credits[i]) { // not required
			continue
		}

		if m.Credits[i] != nil {
			if err := m.Credits[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("credits" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *IAPOrderInfo) validateEntitlements(formats strfmt.Registry) error {

	if swag.IsZero(m.Entitlements) { // not required
		return nil
	}

	for i := 0; i < len(m.Entitlements); i++ {
		if swag.IsZero(m.Entitlements[i]) { // not required
			continue
		}

		if m.Entitlements[i] != nil {
			if err := m.Entitlements[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("entitlements" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *IAPOrderInfo) validateFulfilledTime(formats strfmt.Registry) error {

	if swag.IsZero(m.FulfilledTime) { // not required
		return nil
	}

	if err := validate.FormatOf("fulfilledTime", "body", "date-time", m.FulfilledTime.String(), formats); err != nil {
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
	if err := json.Unmarshal([]byte(`["FAILED","FULFILLED","VERIFIED"]`), &res); err != nil {
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

var iapOrderInfoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APPLE","EPICGAMES","GOOGLE","PLAYSTATION","STADIA","STEAM","TWITCH","XBOX"]`), &res); err != nil {
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
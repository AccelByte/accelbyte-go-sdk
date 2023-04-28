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

// SubscriptionInfo Subscription info
//
// swagger:model Subscription info.
type SubscriptionInfo struct {

	// saved billing account
	BillingAccount *BillingAccount `json:"billingAccount,omitempty"`

	// charge status
	// Enum: ['CHARGED', 'CHARGE_FAILED', 'NEVER', 'RECURRING_CHARGING', 'SETUP']
	// Required: true
	ChargeStatus *string `json:"chargeStatus"`

	// already charged cycles
	// Format: int32
	ChargedCycles int32 `json:"chargedCycles,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// currency
	Currency *CurrencySummary `json:"currency,omitempty"`

	// current cycle in
	// Format: int32
	CurrentCycle int32 `json:"currentCycle,omitempty"`

	// current period end
	// Format: date-time
	CurrentPeriodEnd *strfmt.DateTime `json:"currentPeriodEnd,omitempty"`

	// current period start
	// Format: date-time
	CurrentPeriodStart *strfmt.DateTime `json:"currentPeriodStart,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// end date time if exist, at current it's not used
	// Format: date-time
	End *strfmt.DateTime `json:"end,omitempty"`

	// granted entitlement summary
	Entitlements []*EntitlementSummary `json:"entitlements,omitempty"`

	// is first subscribe, will enjoy trial if trial available if it's first time subscribe
	FirstSubscribe bool `json:"firstSubscribe"`

	// id
	// Required: true
	ID *string `json:"id"`

	// whether in fixed cycle trial
	// Required: true
	InFixedCycleTrial *bool `json:"inFixedCycleTrial"`

	// whether in fixed free days
	// Required: true
	InFixedFreeDays *bool `json:"inFixedFreeDays"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// item snapshot
	ItemSnapshot *ItemSnapshot `json:"itemSnapshot,omitempty"`

	// created language
	Language string `json:"language,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// next billing date
	// Format: date-time
	NextBillingDate *strfmt.DateTime `json:"nextBillingDate,omitempty"`

	// whether user paid from the subscription start
	Paid bool `json:"paid"`

	// whether need to go to payment station for payment
	// Required: true
	PaymentFlowRequired *bool `json:"paymentFlowRequired"`

	// current payment order no
	PaymentOrderNo string `json:"paymentOrderNo,omitempty"`

	// payment station url
	PaymentStationURL string `json:"paymentStationUrl,omitempty"`

	// normal price
	// Format: int32
	Price int32 `json:"price,omitempty"`

	// recurring
	// Required: true
	Recurring *Recurring `json:"recurring"`

	// created region
	Region string `json:"region,omitempty"`

	// payment retry attempted
	// Format: int32
	RetryAttempted int32 `json:"retryAttempted,omitempty"`

	// payment returnUrl for payment station
	ReturnURL string `json:"returnUrl,omitempty"`

	// is sandbox mode
	Sandbox bool `json:"sandbox"`

	// sku
	Sku string `json:"sku,omitempty"`

	// source
	Source string `json:"source,omitempty"`

	// start date time, it will record the first time subscribed
	// Format: date-time
	Start *strfmt.DateTime `json:"start,omitempty"`

	// status
	// Enum: ['ACTIVE', 'CANCELLED', 'EXPIRED', 'INIT']
	// Required: true
	Status *string `json:"status"`

	// subscribed date time
	// Format: date-time
	SubscribedAt *strfmt.DateTime `json:"subscribedAt,omitempty"`

	// subscribed by PLATFORM(system granted) or USER(subscribed by userself)
	// Enum: ['PLATFORM', 'USER']
	SubscribedBy string `json:"subscribedBy,omitempty"`

	// title
	Title string `json:"title,omitempty"`

	// trial price
	// Format: int32
	TrialPrice int32 `json:"trialPrice,omitempty"`

	// already trialed cycles if exist fixedCycleTrial
	// Format: int32
	TrialedCycles int32 `json:"trialedCycles,omitempty"`

	// unsubscribe reason
	UnsubscribeReason string `json:"unsubscribeReason,omitempty"`

	// unsubscribed date time
	// Format: date-time
	UnsubscribedAt *strfmt.DateTime `json:"unsubscribedAt,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Subscription info
func (m *SubscriptionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChargeStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInFixedCycleTrial(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInFixedFreeDays(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentFlowRequired(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRecurring(formats); err != nil {
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

var subscriptionInfoTypeChargeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHARGED", "CHARGE_FAILED", "NEVER", "RECURRING_CHARGING", "SETUP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		subscriptionInfoTypeChargeStatusPropEnum = append(subscriptionInfoTypeChargeStatusPropEnum, v)
	}
}

const (

	// SubscriptionInfoChargeStatusCHARGED captures enum value "CHARGED"
	SubscriptionInfoChargeStatusCHARGED string = "CHARGED"

	// SubscriptionInfoChargeStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	SubscriptionInfoChargeStatusCHARGEFAILED string = "CHARGE_FAILED"

	// SubscriptionInfoChargeStatusNEVER captures enum value "NEVER"
	SubscriptionInfoChargeStatusNEVER string = "NEVER"

	// SubscriptionInfoChargeStatusRECURRINGCHARGING captures enum value "RECURRING_CHARGING"
	SubscriptionInfoChargeStatusRECURRINGCHARGING string = "RECURRING_CHARGING"

	// SubscriptionInfoChargeStatusSETUP captures enum value "SETUP"
	SubscriptionInfoChargeStatusSETUP string = "SETUP"
)

// prop value enum
func (m *SubscriptionInfo) validateChargeStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, subscriptionInfoTypeChargeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SubscriptionInfo) validateChargeStatus(formats strfmt.Registry) error {

	if err := validate.Required("chargeStatus", "body", m.ChargeStatus); err != nil {
		return err
	}

	// value enum
	if err := m.validateChargeStatusEnum("chargeStatus", "body", *m.ChargeStatus); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validateInFixedCycleTrial(formats strfmt.Registry) error {

	if err := validate.Required("inFixedCycleTrial", "body", m.InFixedCycleTrial); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validateInFixedFreeDays(formats strfmt.Registry) error {

	if err := validate.Required("inFixedFreeDays", "body", m.InFixedFreeDays); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validatePaymentFlowRequired(formats strfmt.Registry) error {

	if err := validate.Required("paymentFlowRequired", "body", m.PaymentFlowRequired); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validateRecurring(formats strfmt.Registry) error {

	if err := validate.Required("recurring", "body", m.Recurring); err != nil {
		return err
	}

	if m.Recurring != nil {
		if err := m.Recurring.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("recurring")
			}
			return err
		}
	}

	return nil
}

var subscriptionInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "CANCELLED", "EXPIRED", "INIT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		subscriptionInfoTypeStatusPropEnum = append(subscriptionInfoTypeStatusPropEnum, v)
	}
}

const (

	// SubscriptionInfoStatusACTIVE captures enum value "ACTIVE"
	SubscriptionInfoStatusACTIVE string = "ACTIVE"

	// SubscriptionInfoStatusCANCELLED captures enum value "CANCELLED"
	SubscriptionInfoStatusCANCELLED string = "CANCELLED"

	// SubscriptionInfoStatusEXPIRED captures enum value "EXPIRED"
	SubscriptionInfoStatusEXPIRED string = "EXPIRED"

	// SubscriptionInfoStatusINIT captures enum value "INIT"
	SubscriptionInfoStatusINIT string = "INIT"
)

// prop value enum
func (m *SubscriptionInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, subscriptionInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SubscriptionInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var subscriptionInfoTypeSubscribedByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PLATFORM", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		subscriptionInfoTypeSubscribedByPropEnum = append(subscriptionInfoTypeSubscribedByPropEnum, v)
	}
}

const (

	// SubscriptionInfoSubscribedByPLATFORM captures enum value "PLATFORM"
	SubscriptionInfoSubscribedByPLATFORM string = "PLATFORM"

	// SubscriptionInfoSubscribedByUSER captures enum value "USER"
	SubscriptionInfoSubscribedByUSER string = "USER"
)

// prop value enum
func (m *SubscriptionInfo) validateSubscribedByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, subscriptionInfoTypeSubscribedByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SubscriptionInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SubscriptionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SubscriptionInfo) UnmarshalBinary(b []byte) error {
	var res SubscriptionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

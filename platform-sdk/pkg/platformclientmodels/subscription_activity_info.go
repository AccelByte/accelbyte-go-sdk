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

// SubscriptionActivityInfo Subscription activity info
//
// swagger:model Subscription activity info.
type SubscriptionActivityInfo struct {

	// subscription action
	// Enum: ['CANCEL', 'CHANGE_BILLING_ACCOUNT', 'GRANT_DAYS', 'IMMEDIATE_CANCEL', 'RESUBSCRIBE', 'SUBSCRIBE']
	// Required: true
	Action *string `json:"action"`

	// subscription already charged cycle
	// Required: true
	// Format: int32
	ChargedCycles *int32 `json:"chargedCycles"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// subscription current cycle number
	// Required: true
	// Format: int32
	CurrentCycle *int32 `json:"currentCycle"`

	// subscription grant days, negative indicates decrease
	// Format: int32
	GrantDays int32 `json:"grantDays,omitempty"`

	// Subscription in fixed cycle trial or not
	InFixedCycleTrial bool `json:"inFixedCycleTrial"`

	// Subscription in fixed free days or not
	InFixedFreeDays bool `json:"inFixedFreeDays"`

	// Subscription namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// operator
	// Required: true
	Operator *string `json:"operator"`

	// subscription action reason
	Reason string `json:"reason,omitempty"`

	// subscription subscribed by
	// Enum: ['PLATFORM', 'USER']
	// Required: true
	SubscribedBy *string `json:"subscribedBy"`

	// Subscription id
	// Required: true
	SubscriptionID *string `json:"subscriptionId"`

	// Subscription already trialed cycles if exist
	// Format: int32
	TrialedCycles int32 `json:"trialedCycles,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// Subscription user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Subscription activity info
func (m *SubscriptionActivityInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateChargedCycles(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentCycle(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOperator(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscribedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscriptionID(formats); err != nil {
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

var subscriptionActivityInfoTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CANCEL", "CHANGE_BILLING_ACCOUNT", "GRANT_DAYS", "IMMEDIATE_CANCEL", "RESUBSCRIBE", "SUBSCRIBE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		subscriptionActivityInfoTypeActionPropEnum = append(subscriptionActivityInfoTypeActionPropEnum, v)
	}
}

const (

	// SubscriptionActivityInfoActionCANCEL captures enum value "CANCEL"
	SubscriptionActivityInfoActionCANCEL string = "CANCEL"

	// SubscriptionActivityInfoActionCHANGEBILLINGACCOUNT captures enum value "CHANGE_BILLING_ACCOUNT"
	SubscriptionActivityInfoActionCHANGEBILLINGACCOUNT string = "CHANGE_BILLING_ACCOUNT"

	// SubscriptionActivityInfoActionGRANTDAYS captures enum value "GRANT_DAYS"
	SubscriptionActivityInfoActionGRANTDAYS string = "GRANT_DAYS"

	// SubscriptionActivityInfoActionIMMEDIATECANCEL captures enum value "IMMEDIATE_CANCEL"
	SubscriptionActivityInfoActionIMMEDIATECANCEL string = "IMMEDIATE_CANCEL"

	// SubscriptionActivityInfoActionRESUBSCRIBE captures enum value "RESUBSCRIBE"
	SubscriptionActivityInfoActionRESUBSCRIBE string = "RESUBSCRIBE"

	// SubscriptionActivityInfoActionSUBSCRIBE captures enum value "SUBSCRIBE"
	SubscriptionActivityInfoActionSUBSCRIBE string = "SUBSCRIBE"
)

// prop value enum
func (m *SubscriptionActivityInfo) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, subscriptionActivityInfoTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SubscriptionActivityInfo) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	// value enum
	if err := m.validateActionEnum("action", "body", *m.Action); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionActivityInfo) validateChargedCycles(formats strfmt.Registry) error {

	if err := validate.Required("chargedCycles", "body", m.ChargedCycles); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionActivityInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionActivityInfo) validateCurrentCycle(formats strfmt.Registry) error {

	if err := validate.Required("currentCycle", "body", m.CurrentCycle); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionActivityInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionActivityInfo) validateOperator(formats strfmt.Registry) error {

	if err := validate.Required("operator", "body", m.Operator); err != nil {
		return err
	}

	return nil
}

var subscriptionActivityInfoTypeSubscribedByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PLATFORM", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		subscriptionActivityInfoTypeSubscribedByPropEnum = append(subscriptionActivityInfoTypeSubscribedByPropEnum, v)
	}
}

const (

	// SubscriptionActivityInfoSubscribedByPLATFORM captures enum value "PLATFORM"
	SubscriptionActivityInfoSubscribedByPLATFORM string = "PLATFORM"

	// SubscriptionActivityInfoSubscribedByUSER captures enum value "USER"
	SubscriptionActivityInfoSubscribedByUSER string = "USER"
)

// prop value enum
func (m *SubscriptionActivityInfo) validateSubscribedByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, subscriptionActivityInfoTypeSubscribedByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SubscriptionActivityInfo) validateSubscribedBy(formats strfmt.Registry) error {

	if err := validate.Required("subscribedBy", "body", m.SubscribedBy); err != nil {
		return err
	}

	// value enum
	if err := m.validateSubscribedByEnum("subscribedBy", "body", *m.SubscribedBy); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionActivityInfo) validateSubscriptionID(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionId", "body", m.SubscriptionID); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionActivityInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionActivityInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SubscriptionActivityInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SubscriptionActivityInfo) UnmarshalBinary(b []byte) error {
	var res SubscriptionActivityInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

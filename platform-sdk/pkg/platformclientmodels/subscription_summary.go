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

// SubscriptionSummary Subscription summary
//
// swagger:model Subscription summary.
type SubscriptionSummary struct {

	// current period end
	// Format: date-time
	CurrentPeriodEnd *strfmt.DateTime `json:"currentPeriodEnd,omitempty"`

	// current period start
	// Format: date-time
	CurrentPeriodStart *strfmt.DateTime `json:"currentPeriodStart,omitempty"`

	// subscription id
	// Required: true
	ID *string `json:"id"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// sku
	Sku string `json:"sku,omitempty"`

	// status
	// Enum: ['ACTIVE', 'CANCELLED', 'EXPIRED', 'INIT']
	// Required: true
	Status *string `json:"status"`

	// subscribed by PLATFORM(system granted) or USER(subscribed by userself)
	// Enum: ['PLATFORM', 'USER']
	SubscribedBy string `json:"subscribedBy,omitempty"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Subscription summary
func (m *SubscriptionSummary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

func (m *SubscriptionSummary) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionSummary) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *SubscriptionSummary) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var subscriptionSummaryTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "CANCELLED", "EXPIRED", "INIT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		subscriptionSummaryTypeStatusPropEnum = append(subscriptionSummaryTypeStatusPropEnum, v)
	}
}

const (

	// SubscriptionSummaryStatusACTIVE captures enum value "ACTIVE"
	SubscriptionSummaryStatusACTIVE string = "ACTIVE"

	// SubscriptionSummaryStatusCANCELLED captures enum value "CANCELLED"
	SubscriptionSummaryStatusCANCELLED string = "CANCELLED"

	// SubscriptionSummaryStatusEXPIRED captures enum value "EXPIRED"
	SubscriptionSummaryStatusEXPIRED string = "EXPIRED"

	// SubscriptionSummaryStatusINIT captures enum value "INIT"
	SubscriptionSummaryStatusINIT string = "INIT"
)

// prop value enum
func (m *SubscriptionSummary) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, subscriptionSummaryTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SubscriptionSummary) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var subscriptionSummaryTypeSubscribedByPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PLATFORM", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		subscriptionSummaryTypeSubscribedByPropEnum = append(subscriptionSummaryTypeSubscribedByPropEnum, v)
	}
}

const (

	// SubscriptionSummarySubscribedByPLATFORM captures enum value "PLATFORM"
	SubscriptionSummarySubscribedByPLATFORM string = "PLATFORM"

	// SubscriptionSummarySubscribedByUSER captures enum value "USER"
	SubscriptionSummarySubscribedByUSER string = "USER"
)

// prop value enum
func (m *SubscriptionSummary) validateSubscribedByEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, subscriptionSummaryTypeSubscribedByPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SubscriptionSummary) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SubscriptionSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SubscriptionSummary) UnmarshalBinary(b []byte) error {
	var res SubscriptionSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

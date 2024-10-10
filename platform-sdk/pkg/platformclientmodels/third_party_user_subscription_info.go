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

// ThirdPartyUserSubscriptionInfo Third party user subscription info
//
// swagger:model Third party user subscription info.
type ThirdPartyUserSubscriptionInfo struct {

	// user subscription whether active
	// Required: true
	Active *bool `json:"active"`

	// Created Time
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// Current Third Party Subscription expired date
	// Required: true
	// Format: date-time
	ExpiredAt strfmt.DateTime `json:"expiredAt"`

	// Unique Id
	// Required: true
	ID *string `json:"id"`

	// Last AGS Third Party Subscription id
	LastTransactionID string `json:"lastTransactionId,omitempty"`

	// Third Party user subscription namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Third Party user subscription platform
	// Enum: ['APPLE', 'EPICGAMES', 'GOOGLE', 'OCULUS', 'PLAYSTATION', 'STADIA', 'STEAM', 'TWITCH', 'XBOX']
	// Required: true
	Platform *string `json:"platform"`

	// Current Third Party Subscription start at
	// Format: date-time
	StartAt *strfmt.DateTime `json:"startAt,omitempty"`

	// Current Third Party user Subscription status
	// Enum: ['ACTIVE', 'BILLING_RETRY_PERIOD', 'CANCELED', 'EXPIRED', 'IN_GRACE_PERIOD', 'ON_HOLD', 'PAUSED', 'PENDING', 'REVOKED', 'UNKNOWN']
	// Required: true
	Status *string `json:"status"`

	// Current Third Party Subscription group id
	SubscriptionGroupID string `json:"subscriptionGroupId,omitempty"`

	// Current Third Party Subscription product id
	// Required: true
	SubscriptionProductID *string `json:"subscriptionProductId"`

	// Updated Time
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// Third Party user subscription user
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Third party user subscription info
func (m *ThirdPartyUserSubscriptionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiredAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscriptionProductID(formats); err != nil {
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

func (m *ThirdPartyUserSubscriptionInfo) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartyUserSubscriptionInfo) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("expiredAt", "body", strfmt.DateTime(m.ExpiredAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("expiredAt", "body", "date-time", m.ExpiredAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartyUserSubscriptionInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartyUserSubscriptionInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var thirdPartyUserSubscriptionInfoTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APPLE", "EPICGAMES", "GOOGLE", "OCULUS", "PLAYSTATION", "STADIA", "STEAM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		thirdPartyUserSubscriptionInfoTypePlatformPropEnum = append(thirdPartyUserSubscriptionInfoTypePlatformPropEnum, v)
	}
}

const (

	// ThirdPartyUserSubscriptionInfoPlatformAPPLE captures enum value "APPLE"
	ThirdPartyUserSubscriptionInfoPlatformAPPLE string = "APPLE"

	// ThirdPartyUserSubscriptionInfoPlatformEPICGAMES captures enum value "EPICGAMES"
	ThirdPartyUserSubscriptionInfoPlatformEPICGAMES string = "EPICGAMES"

	// ThirdPartyUserSubscriptionInfoPlatformGOOGLE captures enum value "GOOGLE"
	ThirdPartyUserSubscriptionInfoPlatformGOOGLE string = "GOOGLE"

	// ThirdPartyUserSubscriptionInfoPlatformOCULUS captures enum value "OCULUS"
	ThirdPartyUserSubscriptionInfoPlatformOCULUS string = "OCULUS"

	// ThirdPartyUserSubscriptionInfoPlatformPLAYSTATION captures enum value "PLAYSTATION"
	ThirdPartyUserSubscriptionInfoPlatformPLAYSTATION string = "PLAYSTATION"

	// ThirdPartyUserSubscriptionInfoPlatformSTADIA captures enum value "STADIA"
	ThirdPartyUserSubscriptionInfoPlatformSTADIA string = "STADIA"

	// ThirdPartyUserSubscriptionInfoPlatformSTEAM captures enum value "STEAM"
	ThirdPartyUserSubscriptionInfoPlatformSTEAM string = "STEAM"

	// ThirdPartyUserSubscriptionInfoPlatformTWITCH captures enum value "TWITCH"
	ThirdPartyUserSubscriptionInfoPlatformTWITCH string = "TWITCH"

	// ThirdPartyUserSubscriptionInfoPlatformXBOX captures enum value "XBOX"
	ThirdPartyUserSubscriptionInfoPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *ThirdPartyUserSubscriptionInfo) validatePlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, thirdPartyUserSubscriptionInfoTypePlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ThirdPartyUserSubscriptionInfo) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	// value enum
	if err := m.validatePlatformEnum("platform", "body", *m.Platform); err != nil {
		return err
	}

	return nil
}

var thirdPartyUserSubscriptionInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "BILLING_RETRY_PERIOD", "CANCELED", "EXPIRED", "IN_GRACE_PERIOD", "ON_HOLD", "PAUSED", "PENDING", "REVOKED", "UNKNOWN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		thirdPartyUserSubscriptionInfoTypeStatusPropEnum = append(thirdPartyUserSubscriptionInfoTypeStatusPropEnum, v)
	}
}

const (

	// ThirdPartyUserSubscriptionInfoStatusACTIVE captures enum value "ACTIVE"
	ThirdPartyUserSubscriptionInfoStatusACTIVE string = "ACTIVE"

	// ThirdPartyUserSubscriptionInfoStatusBILLINGRETRYPERIOD captures enum value "BILLING_RETRY_PERIOD"
	ThirdPartyUserSubscriptionInfoStatusBILLINGRETRYPERIOD string = "BILLING_RETRY_PERIOD"

	// ThirdPartyUserSubscriptionInfoStatusCANCELED captures enum value "CANCELED"
	ThirdPartyUserSubscriptionInfoStatusCANCELED string = "CANCELED"

	// ThirdPartyUserSubscriptionInfoStatusEXPIRED captures enum value "EXPIRED"
	ThirdPartyUserSubscriptionInfoStatusEXPIRED string = "EXPIRED"

	// ThirdPartyUserSubscriptionInfoStatusINGRACEPERIOD captures enum value "IN_GRACE_PERIOD"
	ThirdPartyUserSubscriptionInfoStatusINGRACEPERIOD string = "IN_GRACE_PERIOD"

	// ThirdPartyUserSubscriptionInfoStatusONHOLD captures enum value "ON_HOLD"
	ThirdPartyUserSubscriptionInfoStatusONHOLD string = "ON_HOLD"

	// ThirdPartyUserSubscriptionInfoStatusPAUSED captures enum value "PAUSED"
	ThirdPartyUserSubscriptionInfoStatusPAUSED string = "PAUSED"

	// ThirdPartyUserSubscriptionInfoStatusPENDING captures enum value "PENDING"
	ThirdPartyUserSubscriptionInfoStatusPENDING string = "PENDING"

	// ThirdPartyUserSubscriptionInfoStatusREVOKED captures enum value "REVOKED"
	ThirdPartyUserSubscriptionInfoStatusREVOKED string = "REVOKED"

	// ThirdPartyUserSubscriptionInfoStatusUNKNOWN captures enum value "UNKNOWN"
	ThirdPartyUserSubscriptionInfoStatusUNKNOWN string = "UNKNOWN"
)

// prop value enum
func (m *ThirdPartyUserSubscriptionInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, thirdPartyUserSubscriptionInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ThirdPartyUserSubscriptionInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartyUserSubscriptionInfo) validateSubscriptionProductID(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionProductId", "body", m.SubscriptionProductID); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartyUserSubscriptionInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ThirdPartyUserSubscriptionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ThirdPartyUserSubscriptionInfo) UnmarshalBinary(b []byte) error {
	var res ThirdPartyUserSubscriptionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

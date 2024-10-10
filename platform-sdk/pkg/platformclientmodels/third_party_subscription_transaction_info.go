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

// ThirdPartySubscriptionTransactionInfo Third party subscription transaction info
//
// swagger:model Third party subscription transaction info.
type ThirdPartySubscriptionTransactionInfo struct {

	// Subscription whether active
	// Required: true
	Active *bool `json:"active"`

	// Created Time
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// Third Party Subscription expired date
	// Required: true
	// Format: date-time
	ExpiredAt strfmt.DateTime `json:"expiredAt"`

	// Unique Id
	// Required: true
	ID *string `json:"id"`

	// Last Transaction Id
	LastTransactionID string `json:"lastTransactionId,omitempty"`

	// Third Party Subscription namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Third Party Subscription original transaction id
	// Required: true
	OriginalTransactionID *string `json:"originalTransactionId"`

	// Third Party Subscription platform
	// Enum: ['APPLE', 'EPICGAMES', 'GOOGLE', 'OCULUS', 'PLAYSTATION', 'STADIA', 'STEAM', 'TWITCH', 'XBOX']
	// Required: true
	Platform *string `json:"platform"`

	// Purchase Token
	PurchaseToken string `json:"purchaseToken,omitempty"`

	// Third Party Subscription expired date
	// Format: date-time
	StartAt *strfmt.DateTime `json:"startAt,omitempty"`

	// Third Party  Subscription status
	// Enum: ['ACTIVE', 'BILLING_RETRY_PERIOD', 'CANCELED', 'EXPIRED', 'IN_GRACE_PERIOD', 'ON_HOLD', 'PAUSED', 'PENDING', 'REVOKED', 'UNKNOWN']
	// Required: true
	Status *string `json:"status"`

	// Third Party Subscription group id
	SubscriptionGroupID string `json:"subscriptionGroupId,omitempty"`

	// Third Party Subscription product id
	// Required: true
	SubscriptionProductID *string `json:"subscriptionProductId"`

	// Updated Time
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// Third Party Subscription user
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Third party subscription transaction info
func (m *ThirdPartySubscriptionTransactionInfo) Validate(formats strfmt.Registry) error {
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
	if err := m.validateOriginalTransactionID(formats); err != nil {
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

func (m *ThirdPartySubscriptionTransactionInfo) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionInfo) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("expiredAt", "body", strfmt.DateTime(m.ExpiredAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("expiredAt", "body", "date-time", m.ExpiredAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionInfo) validateOriginalTransactionID(formats strfmt.Registry) error {

	if err := validate.Required("originalTransactionId", "body", m.OriginalTransactionID); err != nil {
		return err
	}

	return nil
}

var thirdPartySubscriptionTransactionInfoTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APPLE", "EPICGAMES", "GOOGLE", "OCULUS", "PLAYSTATION", "STADIA", "STEAM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		thirdPartySubscriptionTransactionInfoTypePlatformPropEnum = append(thirdPartySubscriptionTransactionInfoTypePlatformPropEnum, v)
	}
}

const (

	// ThirdPartySubscriptionTransactionInfoPlatformAPPLE captures enum value "APPLE"
	ThirdPartySubscriptionTransactionInfoPlatformAPPLE string = "APPLE"

	// ThirdPartySubscriptionTransactionInfoPlatformEPICGAMES captures enum value "EPICGAMES"
	ThirdPartySubscriptionTransactionInfoPlatformEPICGAMES string = "EPICGAMES"

	// ThirdPartySubscriptionTransactionInfoPlatformGOOGLE captures enum value "GOOGLE"
	ThirdPartySubscriptionTransactionInfoPlatformGOOGLE string = "GOOGLE"

	// ThirdPartySubscriptionTransactionInfoPlatformOCULUS captures enum value "OCULUS"
	ThirdPartySubscriptionTransactionInfoPlatformOCULUS string = "OCULUS"

	// ThirdPartySubscriptionTransactionInfoPlatformPLAYSTATION captures enum value "PLAYSTATION"
	ThirdPartySubscriptionTransactionInfoPlatformPLAYSTATION string = "PLAYSTATION"

	// ThirdPartySubscriptionTransactionInfoPlatformSTADIA captures enum value "STADIA"
	ThirdPartySubscriptionTransactionInfoPlatformSTADIA string = "STADIA"

	// ThirdPartySubscriptionTransactionInfoPlatformSTEAM captures enum value "STEAM"
	ThirdPartySubscriptionTransactionInfoPlatformSTEAM string = "STEAM"

	// ThirdPartySubscriptionTransactionInfoPlatformTWITCH captures enum value "TWITCH"
	ThirdPartySubscriptionTransactionInfoPlatformTWITCH string = "TWITCH"

	// ThirdPartySubscriptionTransactionInfoPlatformXBOX captures enum value "XBOX"
	ThirdPartySubscriptionTransactionInfoPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *ThirdPartySubscriptionTransactionInfo) validatePlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, thirdPartySubscriptionTransactionInfoTypePlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ThirdPartySubscriptionTransactionInfo) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	// value enum
	if err := m.validatePlatformEnum("platform", "body", *m.Platform); err != nil {
		return err
	}

	return nil
}

var thirdPartySubscriptionTransactionInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "BILLING_RETRY_PERIOD", "CANCELED", "EXPIRED", "IN_GRACE_PERIOD", "ON_HOLD", "PAUSED", "PENDING", "REVOKED", "UNKNOWN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		thirdPartySubscriptionTransactionInfoTypeStatusPropEnum = append(thirdPartySubscriptionTransactionInfoTypeStatusPropEnum, v)
	}
}

const (

	// ThirdPartySubscriptionTransactionInfoStatusACTIVE captures enum value "ACTIVE"
	ThirdPartySubscriptionTransactionInfoStatusACTIVE string = "ACTIVE"

	// ThirdPartySubscriptionTransactionInfoStatusBILLINGRETRYPERIOD captures enum value "BILLING_RETRY_PERIOD"
	ThirdPartySubscriptionTransactionInfoStatusBILLINGRETRYPERIOD string = "BILLING_RETRY_PERIOD"

	// ThirdPartySubscriptionTransactionInfoStatusCANCELED captures enum value "CANCELED"
	ThirdPartySubscriptionTransactionInfoStatusCANCELED string = "CANCELED"

	// ThirdPartySubscriptionTransactionInfoStatusEXPIRED captures enum value "EXPIRED"
	ThirdPartySubscriptionTransactionInfoStatusEXPIRED string = "EXPIRED"

	// ThirdPartySubscriptionTransactionInfoStatusINGRACEPERIOD captures enum value "IN_GRACE_PERIOD"
	ThirdPartySubscriptionTransactionInfoStatusINGRACEPERIOD string = "IN_GRACE_PERIOD"

	// ThirdPartySubscriptionTransactionInfoStatusONHOLD captures enum value "ON_HOLD"
	ThirdPartySubscriptionTransactionInfoStatusONHOLD string = "ON_HOLD"

	// ThirdPartySubscriptionTransactionInfoStatusPAUSED captures enum value "PAUSED"
	ThirdPartySubscriptionTransactionInfoStatusPAUSED string = "PAUSED"

	// ThirdPartySubscriptionTransactionInfoStatusPENDING captures enum value "PENDING"
	ThirdPartySubscriptionTransactionInfoStatusPENDING string = "PENDING"

	// ThirdPartySubscriptionTransactionInfoStatusREVOKED captures enum value "REVOKED"
	ThirdPartySubscriptionTransactionInfoStatusREVOKED string = "REVOKED"

	// ThirdPartySubscriptionTransactionInfoStatusUNKNOWN captures enum value "UNKNOWN"
	ThirdPartySubscriptionTransactionInfoStatusUNKNOWN string = "UNKNOWN"
)

// prop value enum
func (m *ThirdPartySubscriptionTransactionInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, thirdPartySubscriptionTransactionInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ThirdPartySubscriptionTransactionInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionInfo) validateSubscriptionProductID(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionProductId", "body", m.SubscriptionProductID); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ThirdPartySubscriptionTransactionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ThirdPartySubscriptionTransactionInfo) UnmarshalBinary(b []byte) error {
	var res ThirdPartySubscriptionTransactionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

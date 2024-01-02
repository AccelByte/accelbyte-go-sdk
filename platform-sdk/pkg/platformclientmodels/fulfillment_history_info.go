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

// FulfillmentHistoryInfo Fulfillment history info
//
// swagger:model Fulfillment history info.
type FulfillmentHistoryInfo struct {

	// redeemed code
	Code string `json:"code,omitempty"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// credit granted
	CreditSummaries []*CreditSummary `json:"creditSummaries,omitempty"`

	// entitlement origin
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Oculus', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	EntitlementOrigin string `json:"entitlementOrigin,omitempty"`

	// entitlement granted
	EntitlementSummaries []*EntitlementSummary `json:"entitlementSummaries,omitempty"`

	// extension fulfillment granted
	ExtensionFulfillmentSummaries []*ExtensionFulfillmentSummary `json:"extensionFulfillmentSummaries,omitempty"`

	// items should do fulfillment
	FulfillItems []*FulfillmentItem `json:"fulfillItems,omitempty"`

	// fulfillment error detail
	FulfillmentError *FulfillmentError `json:"fulfillmentError,omitempty"`

	// item ids already granted
	GrantedItemIds []string `json:"grantedItemIds,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// orderNo
	OrderNo string `json:"orderNo,omitempty"`

	// fulfillment status
	// Enum: ['FAIL', 'SUCCESS']
	// Required: true
	Status *string `json:"status"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// userId
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Fulfillment history info
func (m *FulfillmentHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *FulfillmentHistoryInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

var fulfillmentHistoryInfoTypeEntitlementOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OCULUS", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentHistoryInfoTypeEntitlementOriginPropEnum = append(fulfillmentHistoryInfoTypeEntitlementOriginPropEnum, v)
	}
}

const (

	// FulfillmentHistoryInfoEntitlementOriginEPIC captures enum value "EPIC"
	FulfillmentHistoryInfoEntitlementOriginEPIC string = "EPIC"

	// FulfillmentHistoryInfoEntitlementOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	FulfillmentHistoryInfoEntitlementOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// FulfillmentHistoryInfoEntitlementOriginIOS captures enum value "IOS"
	FulfillmentHistoryInfoEntitlementOriginIOS string = "IOS"

	// FulfillmentHistoryInfoEntitlementOriginNINTENDO captures enum value "NINTENDO"
	FulfillmentHistoryInfoEntitlementOriginNINTENDO string = "NINTENDO"

	// FulfillmentHistoryInfoEntitlementOriginOCULUS captures enum value "OCULUS"
	FulfillmentHistoryInfoEntitlementOriginOCULUS string = "OCULUS"

	// FulfillmentHistoryInfoEntitlementOriginOTHER captures enum value "OTHER"
	FulfillmentHistoryInfoEntitlementOriginOTHER string = "OTHER"

	// FulfillmentHistoryInfoEntitlementOriginPLAYSTATION captures enum value "PLAYSTATION"
	FulfillmentHistoryInfoEntitlementOriginPLAYSTATION string = "PLAYSTATION"

	// FulfillmentHistoryInfoEntitlementOriginSTEAM captures enum value "STEAM"
	FulfillmentHistoryInfoEntitlementOriginSTEAM string = "STEAM"

	// FulfillmentHistoryInfoEntitlementOriginSYSTEM captures enum value "SYSTEM"
	FulfillmentHistoryInfoEntitlementOriginSYSTEM string = "SYSTEM"

	// FulfillmentHistoryInfoEntitlementOriginTWITCH captures enum value "TWITCH"
	FulfillmentHistoryInfoEntitlementOriginTWITCH string = "TWITCH"

	// FulfillmentHistoryInfoEntitlementOriginXBOX captures enum value "XBOX"
	FulfillmentHistoryInfoEntitlementOriginXBOX string = "XBOX"
)

// prop value enum
func (m *FulfillmentHistoryInfo) validateEntitlementOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentHistoryInfoTypeEntitlementOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentHistoryInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var fulfillmentHistoryInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulfillmentHistoryInfoTypeStatusPropEnum = append(fulfillmentHistoryInfoTypeStatusPropEnum, v)
	}
}

const (

	// FulfillmentHistoryInfoStatusFAIL captures enum value "FAIL"
	FulfillmentHistoryInfoStatusFAIL string = "FAIL"

	// FulfillmentHistoryInfoStatusSUCCESS captures enum value "SUCCESS"
	FulfillmentHistoryInfoStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *FulfillmentHistoryInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulfillmentHistoryInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulfillmentHistoryInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentHistoryInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentHistoryInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentHistoryInfo) UnmarshalBinary(b []byte) error {
	var res FulfillmentHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

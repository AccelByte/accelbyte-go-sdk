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

// ThirdPartySubscriptionTransactionHistoryInfo Third party subscription transaction history info
//
// swagger:model Third party subscription transaction history info.
type ThirdPartySubscriptionTransactionHistoryInfo struct {

	// created time
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// subscription current expired time
	// Format: date-time
	ExpiredAt *strfmt.DateTime `json:"expiredAt,omitempty"`

	// Unique Id
	// Required: true
	ID *string `json:"id"`

	// The userId of the third party subscription
	LastTransactionID string `json:"lastTransactionId,omitempty"`

	// The namespace of the third party subscription
	// Required: true
	Namespace *string `json:"namespace"`

	// operator
	Operator string `json:"operator,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// status
	// Enum: ['ACTIVE', 'BILLING_RETRY_PERIOD', 'CANCELED', 'EXPIRED', 'IN_GRACE_PERIOD', 'ON_HOLD', 'PAUSED', 'PENDING', 'REVOKED', 'UNKNOWN']
	// Required: true
	Status *string `json:"status"`

	// subscription product id
	SubscriptionProductID string `json:"subscriptionProductId,omitempty"`

	// third party subscription Id
	// Required: true
	ThirdPartySubscriptionID *string `json:"thirdPartySubscriptionId"`

	// updated time
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// The userId of the third party subscription
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Third party subscription transaction history info
func (m *ThirdPartySubscriptionTransactionHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateThirdPartySubscriptionID(formats); err != nil {
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

func (m *ThirdPartySubscriptionTransactionHistoryInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var thirdPartySubscriptionTransactionHistoryInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "BILLING_RETRY_PERIOD", "CANCELED", "EXPIRED", "IN_GRACE_PERIOD", "ON_HOLD", "PAUSED", "PENDING", "REVOKED", "UNKNOWN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		thirdPartySubscriptionTransactionHistoryInfoTypeStatusPropEnum = append(thirdPartySubscriptionTransactionHistoryInfoTypeStatusPropEnum, v)
	}
}

const (

	// ThirdPartySubscriptionTransactionHistoryInfoStatusACTIVE captures enum value "ACTIVE"
	ThirdPartySubscriptionTransactionHistoryInfoStatusACTIVE string = "ACTIVE"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusBILLINGRETRYPERIOD captures enum value "BILLING_RETRY_PERIOD"
	ThirdPartySubscriptionTransactionHistoryInfoStatusBILLINGRETRYPERIOD string = "BILLING_RETRY_PERIOD"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusCANCELED captures enum value "CANCELED"
	ThirdPartySubscriptionTransactionHistoryInfoStatusCANCELED string = "CANCELED"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusEXPIRED captures enum value "EXPIRED"
	ThirdPartySubscriptionTransactionHistoryInfoStatusEXPIRED string = "EXPIRED"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusINGRACEPERIOD captures enum value "IN_GRACE_PERIOD"
	ThirdPartySubscriptionTransactionHistoryInfoStatusINGRACEPERIOD string = "IN_GRACE_PERIOD"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusONHOLD captures enum value "ON_HOLD"
	ThirdPartySubscriptionTransactionHistoryInfoStatusONHOLD string = "ON_HOLD"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusPAUSED captures enum value "PAUSED"
	ThirdPartySubscriptionTransactionHistoryInfoStatusPAUSED string = "PAUSED"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusPENDING captures enum value "PENDING"
	ThirdPartySubscriptionTransactionHistoryInfoStatusPENDING string = "PENDING"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusREVOKED captures enum value "REVOKED"
	ThirdPartySubscriptionTransactionHistoryInfoStatusREVOKED string = "REVOKED"

	// ThirdPartySubscriptionTransactionHistoryInfoStatusUNKNOWN captures enum value "UNKNOWN"
	ThirdPartySubscriptionTransactionHistoryInfoStatusUNKNOWN string = "UNKNOWN"
)

// prop value enum
func (m *ThirdPartySubscriptionTransactionHistoryInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, thirdPartySubscriptionTransactionHistoryInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ThirdPartySubscriptionTransactionHistoryInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionHistoryInfo) validateThirdPartySubscriptionID(formats strfmt.Registry) error {

	if err := validate.Required("thirdPartySubscriptionId", "body", m.ThirdPartySubscriptionID); err != nil {
		return err
	}

	return nil
}

func (m *ThirdPartySubscriptionTransactionHistoryInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ThirdPartySubscriptionTransactionHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ThirdPartySubscriptionTransactionHistoryInfo) UnmarshalBinary(b []byte) error {
	var res ThirdPartySubscriptionTransactionHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

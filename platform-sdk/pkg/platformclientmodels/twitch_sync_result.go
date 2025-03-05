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

// TwitchSyncResult Twitch sync result
//
// swagger:model Twitch sync result.
type TwitchSyncResult struct {

	// order status
	// Enum: ['FAILED', 'FULFILLED', 'PARTIAL_REVOKED', 'REVOKED', 'REVOKE_FAILED', 'VERIFIED']
	IAPOrderStatus string `json:"iapOrderStatus,omitempty"`

	// Item sku
	ItemSku string `json:"itemSku,omitempty"`

	// Twitch entitlement id
	TransactionID string `json:"transactionId,omitempty"`
}

// Validate validates this Twitch sync result
func (m *TwitchSyncResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var twitchSyncResultTypeIAPOrderStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "FULFILLED", "PARTIAL_REVOKED", "REVOKED", "REVOKE_FAILED", "VERIFIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		twitchSyncResultTypeIAPOrderStatusPropEnum = append(twitchSyncResultTypeIAPOrderStatusPropEnum, v)
	}
}

const (

	// TwitchSyncResultIAPOrderStatusFAILED captures enum value "FAILED"
	TwitchSyncResultIAPOrderStatusFAILED string = "FAILED"

	// TwitchSyncResultIAPOrderStatusFULFILLED captures enum value "FULFILLED"
	TwitchSyncResultIAPOrderStatusFULFILLED string = "FULFILLED"

	// TwitchSyncResultIAPOrderStatusPARTIALREVOKED captures enum value "PARTIAL_REVOKED"
	TwitchSyncResultIAPOrderStatusPARTIALREVOKED string = "PARTIAL_REVOKED"

	// TwitchSyncResultIAPOrderStatusREVOKED captures enum value "REVOKED"
	TwitchSyncResultIAPOrderStatusREVOKED string = "REVOKED"

	// TwitchSyncResultIAPOrderStatusREVOKEFAILED captures enum value "REVOKE_FAILED"
	TwitchSyncResultIAPOrderStatusREVOKEFAILED string = "REVOKE_FAILED"

	// TwitchSyncResultIAPOrderStatusVERIFIED captures enum value "VERIFIED"
	TwitchSyncResultIAPOrderStatusVERIFIED string = "VERIFIED"
)

// prop value enum
func (m *TwitchSyncResult) validateIAPOrderStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, twitchSyncResultTypeIAPOrderStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TwitchSyncResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TwitchSyncResult) UnmarshalBinary(b []byte) error {
	var res TwitchSyncResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

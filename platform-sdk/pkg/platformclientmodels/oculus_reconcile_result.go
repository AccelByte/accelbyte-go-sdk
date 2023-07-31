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

// OculusReconcileResult Oculus reconcile result
//
// swagger:model Oculus reconcile result.
type OculusReconcileResult struct {

	// AGS In App Purchase order status
	// Enum: ['FAILED', 'FULFILLED', 'VERIFIED']
	IAPOrderStatus string `json:"iapOrderStatus,omitempty"`

	// AGS item identity
	ItemIdentity string `json:"itemIdentity,omitempty"`

	// AGS item identity type
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	ItemIdentityType string `json:"itemIdentityType,omitempty"`

	// Oculus item sku
	OculusItemSku string `json:"oculusItemSku,omitempty"`

	// AGS transaction id
	TransactionID string `json:"transactionId,omitempty"`
}

// Validate validates this Oculus reconcile result
func (m *OculusReconcileResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var oculusReconcileResultTypeIAPOrderStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "FULFILLED", "VERIFIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		oculusReconcileResultTypeIAPOrderStatusPropEnum = append(oculusReconcileResultTypeIAPOrderStatusPropEnum, v)
	}
}

const (

	// OculusReconcileResultIAPOrderStatusFAILED captures enum value "FAILED"
	OculusReconcileResultIAPOrderStatusFAILED string = "FAILED"

	// OculusReconcileResultIAPOrderStatusFULFILLED captures enum value "FULFILLED"
	OculusReconcileResultIAPOrderStatusFULFILLED string = "FULFILLED"

	// OculusReconcileResultIAPOrderStatusVERIFIED captures enum value "VERIFIED"
	OculusReconcileResultIAPOrderStatusVERIFIED string = "VERIFIED"
)

// prop value enum
func (m *OculusReconcileResult) validateIAPOrderStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, oculusReconcileResultTypeIAPOrderStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

var oculusReconcileResultTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		oculusReconcileResultTypeItemIdentityTypePropEnum = append(oculusReconcileResultTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// OculusReconcileResultItemIdentityTypeITEMID captures enum value "ITEM_ID"
	OculusReconcileResultItemIdentityTypeITEMID string = "ITEM_ID"

	// OculusReconcileResultItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	OculusReconcileResultItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *OculusReconcileResult) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, oculusReconcileResultTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *OculusReconcileResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OculusReconcileResult) UnmarshalBinary(b []byte) error {
	var res OculusReconcileResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

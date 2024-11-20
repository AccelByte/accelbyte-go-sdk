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

// XblReconcileResult Xbl reconcile result
//
// swagger:model Xbl reconcile result.
type XblReconcileResult struct {

	// iaporderstatus
	// Enum: ['FAILED', 'FULFILLED', 'PARTIAL_REVOKED', 'REVOKED', 'VERIFIED']
	IAPOrderStatus string `json:"iapOrderStatus,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// sku
	Sku string `json:"sku,omitempty"`

	// transactionid
	TransactionID string `json:"transactionId,omitempty"`

	// xboxproductid
	XboxProductID string `json:"xboxProductId,omitempty"`
}

// Validate validates this Xbl reconcile result
func (m *XblReconcileResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var xblReconcileResultTypeIAPOrderStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "FULFILLED", "PARTIAL_REVOKED", "REVOKED", "VERIFIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		xblReconcileResultTypeIAPOrderStatusPropEnum = append(xblReconcileResultTypeIAPOrderStatusPropEnum, v)
	}
}

const (

	// XblReconcileResultIAPOrderStatusFAILED captures enum value "FAILED"
	XblReconcileResultIAPOrderStatusFAILED string = "FAILED"

	// XblReconcileResultIAPOrderStatusFULFILLED captures enum value "FULFILLED"
	XblReconcileResultIAPOrderStatusFULFILLED string = "FULFILLED"

	// XblReconcileResultIAPOrderStatusPARTIALREVOKED captures enum value "PARTIAL_REVOKED"
	XblReconcileResultIAPOrderStatusPARTIALREVOKED string = "PARTIAL_REVOKED"

	// XblReconcileResultIAPOrderStatusREVOKED captures enum value "REVOKED"
	XblReconcileResultIAPOrderStatusREVOKED string = "REVOKED"

	// XblReconcileResultIAPOrderStatusVERIFIED captures enum value "VERIFIED"
	XblReconcileResultIAPOrderStatusVERIFIED string = "VERIFIED"
)

// prop value enum
func (m *XblReconcileResult) validateIAPOrderStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, xblReconcileResultTypeIAPOrderStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XblReconcileResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblReconcileResult) UnmarshalBinary(b []byte) error {
	var res XblReconcileResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

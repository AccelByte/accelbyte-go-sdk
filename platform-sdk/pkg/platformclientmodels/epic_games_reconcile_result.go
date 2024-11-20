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

// EpicGamesReconcileResult Epic games reconcile result
//
// swagger:model Epic games reconcile result.
type EpicGamesReconcileResult struct {

	// epicgamesitemid
	EpicGamesItemID string `json:"epicGamesItemId,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// sku
	Sku string `json:"sku,omitempty"`

	// status
	// Enum: ['FAILED', 'FULFILLED', 'PARTIAL_REVOKED', 'REVOKED', 'VERIFIED']
	Status string `json:"status,omitempty"`

	// transactionid
	TransactionID string `json:"transactionId,omitempty"`
}

// Validate validates this Epic games reconcile result
func (m *EpicGamesReconcileResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var epicGamesReconcileResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "FULFILLED", "PARTIAL_REVOKED", "REVOKED", "VERIFIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		epicGamesReconcileResultTypeStatusPropEnum = append(epicGamesReconcileResultTypeStatusPropEnum, v)
	}
}

const (

	// EpicGamesReconcileResultStatusFAILED captures enum value "FAILED"
	EpicGamesReconcileResultStatusFAILED string = "FAILED"

	// EpicGamesReconcileResultStatusFULFILLED captures enum value "FULFILLED"
	EpicGamesReconcileResultStatusFULFILLED string = "FULFILLED"

	// EpicGamesReconcileResultStatusPARTIALREVOKED captures enum value "PARTIAL_REVOKED"
	EpicGamesReconcileResultStatusPARTIALREVOKED string = "PARTIAL_REVOKED"

	// EpicGamesReconcileResultStatusREVOKED captures enum value "REVOKED"
	EpicGamesReconcileResultStatusREVOKED string = "REVOKED"

	// EpicGamesReconcileResultStatusVERIFIED captures enum value "VERIFIED"
	EpicGamesReconcileResultStatusVERIFIED string = "VERIFIED"
)

// prop value enum
func (m *EpicGamesReconcileResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, epicGamesReconcileResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EpicGamesReconcileResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EpicGamesReconcileResult) UnmarshalBinary(b []byte) error {
	var res EpicGamesReconcileResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

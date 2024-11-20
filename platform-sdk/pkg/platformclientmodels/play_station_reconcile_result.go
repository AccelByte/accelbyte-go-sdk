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

// PlayStationReconcileResult Play station reconcile result
//
// swagger:model Play station reconcile result.
type PlayStationReconcileResult struct {

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// psnitemid
	PsnItemID string `json:"psnItemId,omitempty"`

	// sku
	Sku string `json:"sku,omitempty"`

	// status
	// Enum: ['FAILED', 'FULFILLED', 'PARTIAL_REVOKED', 'REVOKED', 'VERIFIED']
	Status string `json:"status,omitempty"`

	// transactionid
	TransactionID string `json:"transactionId,omitempty"`
}

// Validate validates this Play station reconcile result
func (m *PlayStationReconcileResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var playStationReconcileResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "FULFILLED", "PARTIAL_REVOKED", "REVOKED", "VERIFIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		playStationReconcileResultTypeStatusPropEnum = append(playStationReconcileResultTypeStatusPropEnum, v)
	}
}

const (

	// PlayStationReconcileResultStatusFAILED captures enum value "FAILED"
	PlayStationReconcileResultStatusFAILED string = "FAILED"

	// PlayStationReconcileResultStatusFULFILLED captures enum value "FULFILLED"
	PlayStationReconcileResultStatusFULFILLED string = "FULFILLED"

	// PlayStationReconcileResultStatusPARTIALREVOKED captures enum value "PARTIAL_REVOKED"
	PlayStationReconcileResultStatusPARTIALREVOKED string = "PARTIAL_REVOKED"

	// PlayStationReconcileResultStatusREVOKED captures enum value "REVOKED"
	PlayStationReconcileResultStatusREVOKED string = "REVOKED"

	// PlayStationReconcileResultStatusVERIFIED captures enum value "VERIFIED"
	PlayStationReconcileResultStatusVERIFIED string = "VERIFIED"
)

// prop value enum
func (m *PlayStationReconcileResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, playStationReconcileResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlayStationReconcileResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayStationReconcileResult) UnmarshalBinary(b []byte) error {
	var res PlayStationReconcileResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

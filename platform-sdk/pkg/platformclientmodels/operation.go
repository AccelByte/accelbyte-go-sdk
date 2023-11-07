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

// Operation Operation
//
// swagger:model Operation.
type Operation struct {

	// creditpayload
	CreditPayload *CreditPayload `json:"creditPayload,omitempty"`

	// debitpayload
	DebitPayload *DebitPayload `json:"debitPayload,omitempty"`

	// fulfillitempayload
	FulFillItemPayload *FulFillItemPayload `json:"fulFillItemPayload,omitempty"`

	// resultid
	ResultID string `json:"resultId,omitempty"`

	// revokeentitlementpayload
	RevokeEntitlementPayload *RevokeEntitlementPayload `json:"revokeEntitlementPayload,omitempty"`

	// status
	// Enum: ['FAILED', 'INIT', 'SKIPPED', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// statusreason
	StatusReason string `json:"statusReason,omitempty"`

	// type
	// Enum: ['CREDIT_WALLET', 'DEBIT_WALLET', 'FULFILL_ITEM', 'REVOKE_ENTITLEMENT']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Operation
func (m *Operation) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var operationTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "INIT", "SKIPPED", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		operationTypeStatusPropEnum = append(operationTypeStatusPropEnum, v)
	}
}

const (

	// OperationStatusFAILED captures enum value "FAILED"
	OperationStatusFAILED string = "FAILED"

	// OperationStatusINIT captures enum value "INIT"
	OperationStatusINIT string = "INIT"

	// OperationStatusSKIPPED captures enum value "SKIPPED"
	OperationStatusSKIPPED string = "SKIPPED"

	// OperationStatusSUCCESS captures enum value "SUCCESS"
	OperationStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *Operation) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, operationTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

var operationTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CREDIT_WALLET", "DEBIT_WALLET", "FULFILL_ITEM", "REVOKE_ENTITLEMENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		operationTypeTypePropEnum = append(operationTypeTypePropEnum, v)
	}
}

const (

	// OperationTypeCREDITWALLET captures enum value "CREDIT_WALLET"
	OperationTypeCREDITWALLET string = "CREDIT_WALLET"

	// OperationTypeDEBITWALLET captures enum value "DEBIT_WALLET"
	OperationTypeDEBITWALLET string = "DEBIT_WALLET"

	// OperationTypeFULFILLITEM captures enum value "FULFILL_ITEM"
	OperationTypeFULFILLITEM string = "FULFILL_ITEM"

	// OperationTypeREVOKEENTITLEMENT captures enum value "REVOKE_ENTITLEMENT"
	OperationTypeREVOKEENTITLEMENT string = "REVOKE_ENTITLEMENT"
)

// prop value enum
func (m *Operation) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, operationTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *Operation) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *Operation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Operation) UnmarshalBinary(b []byte) error {
	var res Operation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

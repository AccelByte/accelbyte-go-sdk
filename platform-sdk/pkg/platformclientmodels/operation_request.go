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

// OperationRequest Operation request
//
// swagger:model Operation request.
type OperationRequest struct {

	// creditpayload
	CreditPayload *CreditPayload `json:"creditPayload,omitempty"`

	// debitpayload
	DebitPayload *DebitPayload `json:"debitPayload,omitempty"`

	// fulfillitempayload
	FulFillItemPayload *FulFillItemPayload `json:"fulFillItemPayload,omitempty"`

	// revokeentitlementpayload
	RevokeEntitlementPayload *RevokeEntitlementPayload `json:"revokeEntitlementPayload,omitempty"`

	// type
	// Enum: ['CREDIT_WALLET', 'DEBIT_WALLET', 'FULFILL_ITEM', 'REVOKE_ENTITLEMENT']
	Type string `json:"type,omitempty"`
}

// Validate validates this Operation request
func (m *OperationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var operationRequestTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CREDIT_WALLET", "DEBIT_WALLET", "FULFILL_ITEM", "REVOKE_ENTITLEMENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		operationRequestTypeTypePropEnum = append(operationRequestTypeTypePropEnum, v)
	}
}

const (

	// OperationRequestTypeCREDITWALLET captures enum value "CREDIT_WALLET"
	OperationRequestTypeCREDITWALLET string = "CREDIT_WALLET"

	// OperationRequestTypeDEBITWALLET captures enum value "DEBIT_WALLET"
	OperationRequestTypeDEBITWALLET string = "DEBIT_WALLET"

	// OperationRequestTypeFULFILLITEM captures enum value "FULFILL_ITEM"
	OperationRequestTypeFULFILLITEM string = "FULFILL_ITEM"

	// OperationRequestTypeREVOKEENTITLEMENT captures enum value "REVOKE_ENTITLEMENT"
	OperationRequestTypeREVOKEENTITLEMENT string = "REVOKE_ENTITLEMENT"
)

// prop value enum
func (m *OperationRequest) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, operationRequestTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *OperationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OperationRequest) UnmarshalBinary(b []byte) error {
	var res OperationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

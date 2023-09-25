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

// DebitRequest Debit request
//
// swagger:model Debit request.
type DebitRequest struct {

	// amount
	// Required: true
	// Format: int64
	Amount *int64 `json:"amount"`

	// balance source, default is OTHER
	// Enum: ['DLC_REVOCATION', 'EXPIRATION', 'IAP_REVOCATION', 'ORDER_REVOCATION', 'OTHER', 'PAYMENT']
	BalanceSource string `json:"balanceSource,omitempty"`

	// metadata for additional wallet transaction detail
	Metadata interface{} `json:"metadata,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`
}

// Validate validates this Debit request
func (m *DebitRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DebitRequest) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	return nil
}

var debitRequestTypeBalanceSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DLC_REVOCATION", "EXPIRATION", "IAP_REVOCATION", "ORDER_REVOCATION", "OTHER", "PAYMENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		debitRequestTypeBalanceSourcePropEnum = append(debitRequestTypeBalanceSourcePropEnum, v)
	}
}

const (

	// DebitRequestBalanceSourceDLCREVOCATION captures enum value "DLC_REVOCATION"
	DebitRequestBalanceSourceDLCREVOCATION string = "DLC_REVOCATION"

	// DebitRequestBalanceSourceEXPIRATION captures enum value "EXPIRATION"
	DebitRequestBalanceSourceEXPIRATION string = "EXPIRATION"

	// DebitRequestBalanceSourceIAPREVOCATION captures enum value "IAP_REVOCATION"
	DebitRequestBalanceSourceIAPREVOCATION string = "IAP_REVOCATION"

	// DebitRequestBalanceSourceORDERREVOCATION captures enum value "ORDER_REVOCATION"
	DebitRequestBalanceSourceORDERREVOCATION string = "ORDER_REVOCATION"

	// DebitRequestBalanceSourceOTHER captures enum value "OTHER"
	DebitRequestBalanceSourceOTHER string = "OTHER"

	// DebitRequestBalanceSourcePAYMENT captures enum value "PAYMENT"
	DebitRequestBalanceSourcePAYMENT string = "PAYMENT"
)

// prop value enum
func (m *DebitRequest) validateBalanceSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, debitRequestTypeBalanceSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DebitRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DebitRequest) UnmarshalBinary(b []byte) error {
	var res DebitRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

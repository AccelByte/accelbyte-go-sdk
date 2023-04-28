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

// CreditRevocation Credit revocation
//
// swagger:model Credit revocation.
type CreditRevocation struct {

	// amount
	// Format: int64
	Amount int64 `json:"amount,omitempty"`

	// balanceorigin
	BalanceOrigin string `json:"balanceOrigin,omitempty"`

	// currencycode
	CurrencyCode string `json:"currencyCode,omitempty"`

	// customrevocation
	CustomRevocation interface{} `json:"customRevocation,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// revocationstrategy
	RevocationStrategy string `json:"revocationStrategy,omitempty"`

	// skipped
	Skipped bool `json:"skipped"`

	// status
	// Enum: ['FAIL', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// walletid
	WalletID string `json:"walletId,omitempty"`
}

// Validate validates this Credit revocation
func (m *CreditRevocation) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var creditRevocationTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		creditRevocationTypeStatusPropEnum = append(creditRevocationTypeStatusPropEnum, v)
	}
}

const (

	// CreditRevocationStatusFAIL captures enum value "FAIL"
	CreditRevocationStatusFAIL string = "FAIL"

	// CreditRevocationStatusSUCCESS captures enum value "SUCCESS"
	CreditRevocationStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *CreditRevocation) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, creditRevocationTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreditRevocation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreditRevocation) UnmarshalBinary(b []byte) error {
	var res CreditRevocation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

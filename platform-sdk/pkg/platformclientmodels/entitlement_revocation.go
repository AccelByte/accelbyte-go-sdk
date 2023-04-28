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

// EntitlementRevocation Entitlement revocation
//
// swagger:model Entitlement revocation.
type EntitlementRevocation struct {

	// customrevocation
	CustomRevocation interface{} `json:"customRevocation,omitempty"`

	// entitlementid
	EntitlementID string `json:"entitlementId,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemsku
	ItemSku string `json:"itemSku,omitempty"`

	// quantity
	// Format: int64
	Quantity int64 `json:"quantity,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// revocationstrategy
	RevocationStrategy string `json:"revocationStrategy,omitempty"`

	// skipped
	Skipped bool `json:"skipped"`

	// status
	// Enum: ['FAIL', 'SUCCESS']
	Status string `json:"status,omitempty"`
}

// Validate validates this Entitlement revocation
func (m *EntitlementRevocation) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var entitlementRevocationTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementRevocationTypeStatusPropEnum = append(entitlementRevocationTypeStatusPropEnum, v)
	}
}

const (

	// EntitlementRevocationStatusFAIL captures enum value "FAIL"
	EntitlementRevocationStatusFAIL string = "FAIL"

	// EntitlementRevocationStatusSUCCESS captures enum value "SUCCESS"
	EntitlementRevocationStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *EntitlementRevocation) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementRevocationTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementRevocation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementRevocation) UnmarshalBinary(b []byte) error {
	var res EntitlementRevocation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

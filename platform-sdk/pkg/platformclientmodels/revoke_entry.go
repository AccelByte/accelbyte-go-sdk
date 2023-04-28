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

// RevokeEntry Revoke entry
//
// swagger:model Revoke entry.
type RevokeEntry struct {

	// revoke currency
	Currency *RevokeCurrency `json:"currency,omitempty"`

	// revoke entitlement
	Entitlement *RevokeEntitlement `json:"entitlement,omitempty"`

	// revoke item
	Item *RevokeItem `json:"item,omitempty"`

	// revoke quantity
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// revoke entry type
	// Enum: ['CURRENCY', 'ENTITLEMENT', 'ITEM']
	Type string `json:"type,omitempty"`
}

// Validate validates this Revoke entry
func (m *RevokeEntry) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revokeEntryTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CURRENCY", "ENTITLEMENT", "ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revokeEntryTypeTypePropEnum = append(revokeEntryTypeTypePropEnum, v)
	}
}

const (

	// RevokeEntryTypeCURRENCY captures enum value "CURRENCY"
	RevokeEntryTypeCURRENCY string = "CURRENCY"

	// RevokeEntryTypeENTITLEMENT captures enum value "ENTITLEMENT"
	RevokeEntryTypeENTITLEMENT string = "ENTITLEMENT"

	// RevokeEntryTypeITEM captures enum value "ITEM"
	RevokeEntryTypeITEM string = "ITEM"
)

// prop value enum
func (m *RevokeEntry) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revokeEntryTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevokeEntry) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeEntry) UnmarshalBinary(b []byte) error {
	var res RevokeEntry
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

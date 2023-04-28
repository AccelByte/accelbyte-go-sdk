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

// ConsumeItem Consume item
//
// swagger:model Consume item.
type ConsumeItem struct {

	// extitemid
	ExtItemID string `json:"extItemId,omitempty"`

	// itemidentity
	ItemIdentity string `json:"itemIdentity,omitempty"`

	// itemidentitytype
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	ItemIdentityType string `json:"itemIdentityType,omitempty"`
}

// Validate validates this Consume item
func (m *ConsumeItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var consumeItemTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		consumeItemTypeItemIdentityTypePropEnum = append(consumeItemTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// ConsumeItemItemIdentityTypeITEMID captures enum value "ITEM_ID"
	ConsumeItemItemIdentityTypeITEMID string = "ITEM_ID"

	// ConsumeItemItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	ConsumeItemItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *ConsumeItem) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, consumeItemTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ConsumeItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ConsumeItem) UnmarshalBinary(b []byte) error {
	var res ConsumeItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

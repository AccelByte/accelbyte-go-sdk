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

// ItemID Item id
//
// swagger:model Item id.
type ItemID struct {

	// itemId
	// Required: true
	ItemID *string `json:"itemId"`

	// sku
	Sku string `json:"sku,omitempty"`

	// status
	// Enum: ['ACTIVE', 'INACTIVE']
	Status string `json:"status,omitempty"`
}

// Validate validates this Item id
func (m *ItemID) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ItemID) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

var itemIdTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemIdTypeStatusPropEnum = append(itemIdTypeStatusPropEnum, v)
	}
}

const (

	// ItemIDStatusACTIVE captures enum value "ACTIVE"
	ItemIDStatusACTIVE string = "ACTIVE"

	// ItemIDStatusINACTIVE captures enum value "INACTIVE"
	ItemIDStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *ItemID) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemIdTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ItemID) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemID) UnmarshalBinary(b []byte) error {
	var res ItemID
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

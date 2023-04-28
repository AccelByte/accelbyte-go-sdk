// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RewardUpdate Reward update
//
// swagger:model Reward update.
type RewardUpdate struct {

	// currency, required when reward type is CURRENCY
	Currency *RewardCurrency `json:"currency,omitempty"`

	// image, thumbnail for reward
	Image *Image `json:"image,omitempty"`

	// itemId, required when reward type is ITEM, the item type should be one of: INGAMEITEM,COINS,BUNDLE
	ItemID string `json:"itemId,omitempty"`

	// nullFields
	// Unique: true
	NullFields []string `json:"nullFields"`

	// Item quantity or Currency amount, default 1
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// type, at current only support ITEM
	// Enum: ['CURRENCY', 'ITEM']
	Type string `json:"type,omitempty"`
}

// Validate validates this Reward update
func (m *RewardUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var rewardUpdateTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CURRENCY", "ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		rewardUpdateTypeTypePropEnum = append(rewardUpdateTypeTypePropEnum, v)
	}
}

const (

	// RewardUpdateTypeCURRENCY captures enum value "CURRENCY"
	RewardUpdateTypeCURRENCY string = "CURRENCY"

	// RewardUpdateTypeITEM captures enum value "ITEM"
	RewardUpdateTypeITEM string = "ITEM"
)

// prop value enum
func (m *RewardUpdate) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, rewardUpdateTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RewardUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RewardUpdate) UnmarshalBinary(b []byte) error {
	var res RewardUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// LootBoxReward Loot box reward
//
// swagger:model Loot box reward.
type LootBoxReward struct {

	// reward items, if type is PROBABILITY_GROUP, will random get one of items in it, if type is REWARD, will grant all items to user when roll this reward
	LootBoxItems []*BoxItem `json:"lootBoxItems,omitempty"`

	// reward name
	Name string `json:"name,omitempty"`

	// odds, automatic calculation based on weights.
	// Format: double
	Odds float64 `json:"odds,omitempty"`

	// reward type
	// Enum: ['PROBABILITY_GROUP', 'REWARD', 'REWARD_GROUP']
	Type string `json:"type,omitempty"`

	// reward weight
	// Format: int32
	Weight int32 `json:"weight,omitempty"`
}

// Validate validates this Loot box reward
func (m *LootBoxReward) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var lootBoxRewardTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PROBABILITY_GROUP", "REWARD", "REWARD_GROUP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		lootBoxRewardTypeTypePropEnum = append(lootBoxRewardTypeTypePropEnum, v)
	}
}

const (

	// LootBoxRewardTypePROBABILITYGROUP captures enum value "PROBABILITY_GROUP"
	LootBoxRewardTypePROBABILITYGROUP string = "PROBABILITY_GROUP"

	// LootBoxRewardTypeREWARD captures enum value "REWARD"
	LootBoxRewardTypeREWARD string = "REWARD"

	// LootBoxRewardTypeREWARDGROUP captures enum value "REWARD_GROUP"
	LootBoxRewardTypeREWARDGROUP string = "REWARD_GROUP"
)

// prop value enum
func (m *LootBoxReward) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, lootBoxRewardTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *LootBoxReward) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *LootBoxReward) UnmarshalBinary(b []byte) error {
	var res LootBoxReward
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

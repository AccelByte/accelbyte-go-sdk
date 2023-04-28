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

// LootBoxConfig Loot box config
//
// swagger:model Loot box config.
type LootBoxConfig struct {

	// reward count, default is 1
	// Format: int32
	RewardCount int32 `json:"rewardCount,omitempty"`

	// rewards
	Rewards []*LootBoxReward `json:"rewards,omitempty"`

	// roll function
	// Enum: ['CUSTOM', 'DEFAULT']
	RollFunction string `json:"rollFunction,omitempty"`
}

// Validate validates this Loot box config
func (m *LootBoxConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var lootBoxConfigTypeRollFunctionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CUSTOM", "DEFAULT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		lootBoxConfigTypeRollFunctionPropEnum = append(lootBoxConfigTypeRollFunctionPropEnum, v)
	}
}

const (

	// LootBoxConfigRollFunctionCUSTOM captures enum value "CUSTOM"
	LootBoxConfigRollFunctionCUSTOM string = "CUSTOM"

	// LootBoxConfigRollFunctionDEFAULT captures enum value "DEFAULT"
	LootBoxConfigRollFunctionDEFAULT string = "DEFAULT"
)

// prop value enum
func (m *LootBoxConfig) validateRollFunctionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, lootBoxConfigTypeRollFunctionPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *LootBoxConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *LootBoxConfig) UnmarshalBinary(b []byte) error {
	var res LootBoxConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

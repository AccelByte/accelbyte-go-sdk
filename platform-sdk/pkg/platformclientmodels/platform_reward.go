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

// PlatformReward Platform reward
//
// swagger:model Platform reward.
type PlatformReward struct {

	// required if type is CURRENCY
	Currency *PlatformRewardCurrency `json:"currency,omitempty"`

	// required if type is ITEM, can be fulfilled by itemId or itemSku
	Item *PlatformRewardItem `json:"item,omitempty"`

	// quantity if type is ITEM, amount if type is CURRENCY
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// reward type
	// Enum: ['CURRENCY', 'ITEM']
	Type string `json:"type,omitempty"`
}

// Validate validates this Platform reward
func (m *PlatformReward) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var platformRewardTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CURRENCY", "ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		platformRewardTypeTypePropEnum = append(platformRewardTypeTypePropEnum, v)
	}
}

const (

	// PlatformRewardTypeCURRENCY captures enum value "CURRENCY"
	PlatformRewardTypeCURRENCY string = "CURRENCY"

	// PlatformRewardTypeITEM captures enum value "ITEM"
	PlatformRewardTypeITEM string = "ITEM"
)

// prop value enum
func (m *PlatformReward) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, platformRewardTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlatformReward) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformReward) UnmarshalBinary(b []byte) error {
	var res PlatformReward
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

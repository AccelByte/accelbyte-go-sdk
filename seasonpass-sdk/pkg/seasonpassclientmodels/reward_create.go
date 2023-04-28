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

// RewardCreate Reward create
//
// swagger:model Reward create.
type RewardCreate struct {

	// code, allowed characters from a-z0-9_:- and start/end in alphanumeric, max length is 255
	// Required: true
	Code *string `json:"code"`

	// currency, required when reward type is CURRENCY
	Currency *RewardCurrency `json:"currency,omitempty"`

	// image, thumbnail for reward
	Image *Image `json:"image,omitempty"`

	// itemId, required when reward type is ITEM, the item type should be one of: INGAMEITEM,COINS,BUNDLE
	ItemID string `json:"itemId,omitempty"`

	// Item quantity or Currency amount, default 1
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// type, at current only support ITEM
	// Enum: ['CURRENCY', 'ITEM']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Reward create
func (m *RewardCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RewardCreate) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

var rewardCreateTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CURRENCY", "ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		rewardCreateTypeTypePropEnum = append(rewardCreateTypeTypePropEnum, v)
	}
}

const (

	// RewardCreateTypeCURRENCY captures enum value "CURRENCY"
	RewardCreateTypeCURRENCY string = "CURRENCY"

	// RewardCreateTypeITEM captures enum value "ITEM"
	RewardCreateTypeITEM string = "ITEM"
)

// prop value enum
func (m *RewardCreate) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, rewardCreateTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RewardCreate) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RewardCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RewardCreate) UnmarshalBinary(b []byte) error {
	var res RewardCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

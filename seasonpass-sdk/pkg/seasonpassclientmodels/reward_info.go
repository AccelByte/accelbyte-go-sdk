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

// RewardInfo Reward info
//
// swagger:model Reward info.
type RewardInfo struct {

	// code
	// Required: true
	Code *string `json:"code"`

	// currency, required when reward type is CURRENCY
	Currency *RewardCurrency `json:"currency,omitempty"`

	// image, thumbnail for reward
	Image *Image `json:"image,omitempty"`

	// itemId, required when reward type is ITEM
	ItemID string `json:"itemId,omitempty"`

	// itemName, required when reward type is ITEM
	ItemName string `json:"itemName,omitempty"`

	// itemSku, required when reward type is ITEM
	ItemSku string `json:"itemSku,omitempty"`

	// itemType, required when reward type is ITEM
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Item quantity or Currency amount, default 1
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// seasonId
	// Required: true
	SeasonID *string `json:"seasonId"`

	// type
	// Enum: ['CURRENCY', 'ITEM']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Reward info
func (m *RewardInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSeasonID(formats); err != nil {
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

func (m *RewardInfo) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

var rewardInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		rewardInfoTypeItemTypePropEnum = append(rewardInfoTypeItemTypePropEnum, v)
	}
}

const (

	// RewardInfoItemTypeAPP captures enum value "APP"
	RewardInfoItemTypeAPP string = "APP"

	// RewardInfoItemTypeBUNDLE captures enum value "BUNDLE"
	RewardInfoItemTypeBUNDLE string = "BUNDLE"

	// RewardInfoItemTypeCODE captures enum value "CODE"
	RewardInfoItemTypeCODE string = "CODE"

	// RewardInfoItemTypeCOINS captures enum value "COINS"
	RewardInfoItemTypeCOINS string = "COINS"

	// RewardInfoItemTypeEXTENSION captures enum value "EXTENSION"
	RewardInfoItemTypeEXTENSION string = "EXTENSION"

	// RewardInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	RewardInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// RewardInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	RewardInfoItemTypeLOOTBOX string = "LOOTBOX"

	// RewardInfoItemTypeMEDIA captures enum value "MEDIA"
	RewardInfoItemTypeMEDIA string = "MEDIA"

	// RewardInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	RewardInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// RewardInfoItemTypeSEASON captures enum value "SEASON"
	RewardInfoItemTypeSEASON string = "SEASON"

	// RewardInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	RewardInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *RewardInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, rewardInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RewardInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *RewardInfo) validateSeasonID(formats strfmt.Registry) error {

	if err := validate.Required("seasonId", "body", m.SeasonID); err != nil {
		return err
	}

	return nil
}

var rewardInfoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CURRENCY", "ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		rewardInfoTypeTypePropEnum = append(rewardInfoTypeTypePropEnum, v)
	}
}

const (

	// RewardInfoTypeCURRENCY captures enum value "CURRENCY"
	RewardInfoTypeCURRENCY string = "CURRENCY"

	// RewardInfoTypeITEM captures enum value "ITEM"
	RewardInfoTypeITEM string = "ITEM"
)

// prop value enum
func (m *RewardInfo) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, rewardInfoTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RewardInfo) validateType(formats strfmt.Registry) error {

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
func (m *RewardInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RewardInfo) UnmarshalBinary(b []byte) error {
	var res RewardInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

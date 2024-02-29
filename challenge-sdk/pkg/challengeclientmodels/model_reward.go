// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelReward Model reward
//
// swagger:model Model reward.
type ModelReward struct {

	// itemid
	// Required: true
	ItemID *string `json:"itemId"`

	// itemname
	// Required: true
	ItemName *string `json:"itemName"`

	// qty
	// Required: true
	// Format: float
	Qty *float32 `json:"qty"`

	// type
	// Enum: ['ENTITLEMENT', 'STATISTIC']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Model reward
func (m *ModelReward) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQty(formats); err != nil {
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

func (m *ModelReward) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *ModelReward) validateItemName(formats strfmt.Registry) error {

	if err := validate.Required("itemName", "body", m.ItemName); err != nil {
		return err
	}

	return nil
}

func (m *ModelReward) validateQty(formats strfmt.Registry) error {

	if err := validate.Required("qty", "body", m.Qty); err != nil {
		return err
	}

	return nil
}

var modelRewardTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ENTITLEMENT", "STATISTIC"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelRewardTypeTypePropEnum = append(modelRewardTypeTypePropEnum, v)
	}
}

const (

	// ModelRewardTypeENTITLEMENT captures enum value "ENTITLEMENT"
	ModelRewardTypeENTITLEMENT string = "ENTITLEMENT"

	// ModelRewardTypeSTATISTIC captures enum value "STATISTIC"
	ModelRewardTypeSTATISTIC string = "STATISTIC"
)

// prop value enum
func (m *ModelReward) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelRewardTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelReward) validateType(formats strfmt.Registry) error {

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
func (m *ModelReward) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelReward) UnmarshalBinary(b []byte) error {
	var res ModelReward
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

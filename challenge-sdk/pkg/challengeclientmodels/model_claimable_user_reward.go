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

// ModelClaimableUserReward Model claimable user reward
//
// swagger:model Model claimable user reward.
type ModelClaimableUserReward struct {

	// goalprogressionid
	// Required: true
	GoalProgressionID *string `json:"goalProgressionId"`

	// id
	// Required: true
	ID *string `json:"id"`

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

	// status
	// Enum: ['CLAIMED', 'UNCLAIMED']
	// Required: true
	Status *string `json:"status"`

	// type
	// Enum: ['ENTITLEMENT', 'STATISTIC']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Model claimable user reward
func (m *ModelClaimableUserReward) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGoalProgressionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQty(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

func (m *ModelClaimableUserReward) validateGoalProgressionID(formats strfmt.Registry) error {

	if err := validate.Required("goalProgressionId", "body", m.GoalProgressionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelClaimableUserReward) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelClaimableUserReward) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *ModelClaimableUserReward) validateItemName(formats strfmt.Registry) error {

	if err := validate.Required("itemName", "body", m.ItemName); err != nil {
		return err
	}

	return nil
}

func (m *ModelClaimableUserReward) validateQty(formats strfmt.Registry) error {

	if err := validate.Required("qty", "body", m.Qty); err != nil {
		return err
	}

	return nil
}

var modelClaimableUserRewardTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLAIMED", "UNCLAIMED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelClaimableUserRewardTypeStatusPropEnum = append(modelClaimableUserRewardTypeStatusPropEnum, v)
	}
}

const (

	// ModelClaimableUserRewardStatusCLAIMED captures enum value "CLAIMED"
	ModelClaimableUserRewardStatusCLAIMED string = "CLAIMED"

	// ModelClaimableUserRewardStatusUNCLAIMED captures enum value "UNCLAIMED"
	ModelClaimableUserRewardStatusUNCLAIMED string = "UNCLAIMED"
)

// prop value enum
func (m *ModelClaimableUserReward) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelClaimableUserRewardTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelClaimableUserReward) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var modelClaimableUserRewardTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ENTITLEMENT", "STATISTIC"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelClaimableUserRewardTypeTypePropEnum = append(modelClaimableUserRewardTypeTypePropEnum, v)
	}
}

const (

	// ModelClaimableUserRewardTypeENTITLEMENT captures enum value "ENTITLEMENT"
	ModelClaimableUserRewardTypeENTITLEMENT string = "ENTITLEMENT"

	// ModelClaimableUserRewardTypeSTATISTIC captures enum value "STATISTIC"
	ModelClaimableUserRewardTypeSTATISTIC string = "STATISTIC"
)

// prop value enum
func (m *ModelClaimableUserReward) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelClaimableUserRewardTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelClaimableUserReward) validateType(formats strfmt.Registry) error {

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
func (m *ModelClaimableUserReward) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelClaimableUserReward) UnmarshalBinary(b []byte) error {
	var res ModelClaimableUserReward
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

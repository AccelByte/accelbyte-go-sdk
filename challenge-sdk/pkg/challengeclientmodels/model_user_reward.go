// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserReward Model user reward
//
// swagger:model Model user reward.
type ModelUserReward struct {

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// goalcode
	// Required: true
	GoalCode *string `json:"goalCode"`

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
	// Required: true
	Status *string `json:"status"`

	// type
	// Required: true
	Type *string `json:"type"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model user reward
func (m *ModelUserReward) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGoalCode(formats); err != nil {
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
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserReward) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateGoalCode(formats strfmt.Registry) error {

	if err := validate.Required("goalCode", "body", m.GoalCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateItemName(formats strfmt.Registry) error {

	if err := validate.Required("itemName", "body", m.ItemName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateQty(formats strfmt.Registry) error {

	if err := validate.Required("qty", "body", m.Qty); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserReward) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserReward) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserReward) UnmarshalBinary(b []byte) error {
	var res ModelUserReward
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

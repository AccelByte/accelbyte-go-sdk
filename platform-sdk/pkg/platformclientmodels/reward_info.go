// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RewardInfo Reward info
//
// swagger:model Reward info.
type RewardInfo struct {

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// Description
	Description string `json:"description,omitempty"`

	// event topic to listen to
	// Required: true
	EventTopic *string `json:"eventTopic"`

	// Max awarded
	// Format: int32
	MaxAwarded int32 `json:"maxAwarded,omitempty"`

	// Max awarded per user
	// Format: int32
	MaxAwardedPerUser int32 `json:"maxAwardedPerUser,omitempty"`

	// Reward namespace
	// Required: true
	Namespace *string `json:"namespace"`

	//  The path to get namespace from event payload, if not present, will use default value
	NamespaceExpression string `json:"namespaceExpression,omitempty"`

	// Reward code
	RewardCode string `json:"rewardCode,omitempty"`

	// list of reward condition
	RewardConditions []*RewardCondition `json:"rewardConditions,omitempty"`

	// Reward id
	// Required: true
	RewardID *string `json:"rewardId"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// The path to get userId from event payload, if not present, will use default value
	UserIDExpression string `json:"userIdExpression,omitempty"`
}

// Validate validates this Reward info
func (m *RewardInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventTopic(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRewardID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RewardInfo) validateEventTopic(formats strfmt.Registry) error {

	if err := validate.Required("eventTopic", "body", m.EventTopic); err != nil {
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

func (m *RewardInfo) validateRewardID(formats strfmt.Registry) error {

	if err := validate.Required("rewardId", "body", m.RewardID); err != nil {
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

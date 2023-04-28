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

// RewardCreate Reward create
//
// swagger:model Reward create.
type RewardCreate struct {

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

	//  The path to get namespace from event payload, if not present, will use default value "$.[0].namespace"
	NamespaceExpression string `json:"namespaceExpression,omitempty"`

	// Reward code
	// Required: true
	RewardCode *string `json:"rewardCode"`

	// list of reward condition
	RewardConditions []*RewardCondition `json:"rewardConditions,omitempty"`

	// The path to get userId from event payload, if not present, will use default value "$.[0].userId"
	UserIDExpression string `json:"userIdExpression,omitempty"`
}

// Validate validates this Reward create
func (m *RewardCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventTopic(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRewardCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RewardCreate) validateEventTopic(formats strfmt.Registry) error {

	if err := validate.Required("eventTopic", "body", m.EventTopic); err != nil {
		return err
	}

	return nil
}

func (m *RewardCreate) validateRewardCode(formats strfmt.Registry) error {

	if err := validate.Required("rewardCode", "body", m.RewardCode); err != nil {
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

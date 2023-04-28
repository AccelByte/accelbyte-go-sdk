// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// RewardCondition Reward condition
//
// swagger:model Reward condition.
type RewardCondition struct {

	// condition
	Condition string `json:"condition,omitempty"`

	// conditionname
	ConditionName string `json:"conditionName,omitempty"`

	// eventname
	EventName string `json:"eventName,omitempty"`

	// rewarditems
	RewardItems []*RewardItem `json:"rewardItems,omitempty"`
}

// Validate validates this Reward condition
func (m *RewardCondition) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RewardCondition) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RewardCondition) UnmarshalBinary(b []byte) error {
	var res RewardCondition
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

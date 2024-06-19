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

// ModelClaimUsersRewardsRequest Model claim users rewards request
//
// swagger:model Model claim users rewards request.
type ModelClaimUsersRewardsRequest struct {

	// rewardids
	// Required: true
	RewardIds []string `json:"rewardIds"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model claim users rewards request
func (m *ModelClaimUsersRewardsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRewardIds(formats); err != nil {
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

func (m *ModelClaimUsersRewardsRequest) validateRewardIds(formats strfmt.Registry) error {

	if err := validate.Required("rewardIds", "body", m.RewardIds); err != nil {
		return err
	}

	return nil
}

func (m *ModelClaimUsersRewardsRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelClaimUsersRewardsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelClaimUsersRewardsRequest) UnmarshalBinary(b []byte) error {
	var res ModelClaimUsersRewardsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

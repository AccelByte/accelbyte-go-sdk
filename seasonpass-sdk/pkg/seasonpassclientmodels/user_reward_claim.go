// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserRewardClaim User reward claim
//
// swagger:model User reward claim.
type UserRewardClaim struct {

	// pass code
	// Required: true
	PassCode *string `json:"passCode"`

	// reward code
	// Required: true
	RewardCode *string `json:"rewardCode"`

	// tier index
	// Required: true
	// Format: int32
	TierIndex *int32 `json:"tierIndex"`
}

// Validate validates this User reward claim
func (m *UserRewardClaim) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePassCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRewardCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTierIndex(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UserRewardClaim) validatePassCode(formats strfmt.Registry) error {

	if err := validate.Required("passCode", "body", m.PassCode); err != nil {
		return err
	}

	return nil
}

func (m *UserRewardClaim) validateRewardCode(formats strfmt.Registry) error {

	if err := validate.Required("rewardCode", "body", m.RewardCode); err != nil {
		return err
	}

	return nil
}

func (m *UserRewardClaim) validateTierIndex(formats strfmt.Registry) error {

	if err := validate.Required("tierIndex", "body", m.TierIndex); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserRewardClaim) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserRewardClaim) UnmarshalBinary(b []byte) error {
	var res UserRewardClaim
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// ModelClaimUserRewardsReq Model claim user rewards req
//
// swagger:model Model claim user rewards req.
type ModelClaimUserRewardsReq struct {

	// max 100 items
	// Required: true
	RewardIDs []string `json:"rewardIDs"`
}

// Validate validates this Model claim user rewards req
func (m *ModelClaimUserRewardsReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRewardIDs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelClaimUserRewardsReq) validateRewardIDs(formats strfmt.Registry) error {

	if err := validate.Required("rewardIDs", "body", m.RewardIDs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelClaimUserRewardsReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelClaimUserRewardsReq) UnmarshalBinary(b []byte) error {
	var res ModelClaimUserRewardsReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

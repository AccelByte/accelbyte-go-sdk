// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelClaimUsersRewardsResponse Model claim users rewards response
//
// swagger:model Model claim users rewards response.
type ModelClaimUsersRewardsResponse struct {

	// errordetail
	ErrorDetail *ResponseError `json:"errorDetail,omitempty"`

	// issuccess
	// Required: true
	IsSuccess *bool `json:"isSuccess"`

	// rewards
	// Required: true
	Rewards []*ModelUserReward `json:"rewards"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model claim users rewards response
func (m *ModelClaimUsersRewardsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsSuccess(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRewards(formats); err != nil {
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

func (m *ModelClaimUsersRewardsResponse) validateIsSuccess(formats strfmt.Registry) error {

	if err := validate.Required("isSuccess", "body", m.IsSuccess); err != nil {
		return err
	}

	return nil
}

func (m *ModelClaimUsersRewardsResponse) validateRewards(formats strfmt.Registry) error {

	if err := validate.Required("rewards", "body", m.Rewards); err != nil {
		return err
	}

	for i := 0; i < len(m.Rewards); i++ {
		if swag.IsZero(m.Rewards[i]) { // not required
			continue
		}

		if m.Rewards[i] != nil {
			if err := m.Rewards[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("rewards" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelClaimUsersRewardsResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelClaimUsersRewardsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelClaimUsersRewardsResponse) UnmarshalBinary(b []byte) error {
	var res ModelClaimUsersRewardsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// Tier Tier
//
// swagger:model Tier.
type Tier struct {

	// tier id, auto generated.
	ID string `json:"id,omitempty"`

	// required exp for tier, it will automatically use season defaultRequiredExp if not set
	// Format: int32
	RequiredExp int32 `json:"requiredExp,omitempty"`

	// rewards map, passCode as key, rewardCode list as value
	Rewards map[string][]string `json:"rewards,omitempty"`
}

// Validate validates this Tier
func (m *Tier) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *Tier) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Tier) UnmarshalBinary(b []byte) error {
	var res Tier
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

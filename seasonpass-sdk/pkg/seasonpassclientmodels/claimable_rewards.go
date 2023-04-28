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

// ClaimableRewards Claimable rewards
//
// swagger:model Claimable rewards.
type ClaimableRewards struct {

	// Claiming rewards, zero based tier index as key, rewards per pass as value
	// Required: true
	ClaimingRewards interface{} `json:"claimingRewards"`

	// To claim rewards, zero based tier index as key, rewards per pass as value
	// Required: true
	ToClaimRewards interface{} `json:"toClaimRewards"`
}

// Validate validates this Claimable rewards
func (m *ClaimableRewards) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ClaimableRewards) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClaimableRewards) UnmarshalBinary(b []byte) error {
	var res ClaimableRewards
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

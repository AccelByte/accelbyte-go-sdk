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

// EntitlementOriginSyncResult Entitlement origin sync result
//
// swagger:model Entitlement origin sync result.
type EntitlementOriginSyncResult struct {

	// failed reason ,only record when call item endpoint failed
	Reason string `json:"reason,omitempty"`

	// DLC Reward
	Reward *PlatformReward `json:"reward,omitempty"`

	// Entitlement Origin Sync and compensation result
	Summary []*RewardMigrationResult `json:"summary,omitempty"`
}

// Validate validates this Entitlement origin sync result
func (m *EntitlementOriginSyncResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementOriginSyncResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementOriginSyncResult) UnmarshalBinary(b []byte) error {
	var res EntitlementOriginSyncResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

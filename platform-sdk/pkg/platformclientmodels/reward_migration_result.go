// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RewardMigrationResult Reward migration result
//
// swagger:model Reward migration result.
type RewardMigrationResult struct {

	// item id
	ItemID string `json:"itemId,omitempty"`

	// total number that need be migrated
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// failed reason
	Reason string `json:"reason,omitempty"`

	// item sku
	Sku string `json:"sku,omitempty"`

	// status of migration,SUCCESS FAIL
	// Enum: ['FAIL', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// it includes:  the count of update no origin entitlement to designated origin  the count of fulfill not enough entitlement
	// Format: int32
	SyncedCount int32 `json:"syncedCount,omitempty"`

	// synced entitlement ids
	SyncedEntitlementIds []string `json:"syncedEntitlementIds,omitempty"`
}

// Validate validates this Reward migration result
func (m *RewardMigrationResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var rewardMigrationResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		rewardMigrationResultTypeStatusPropEnum = append(rewardMigrationResultTypeStatusPropEnum, v)
	}
}

const (

	// RewardMigrationResultStatusFAIL captures enum value "FAIL"
	RewardMigrationResultStatusFAIL string = "FAIL"

	// RewardMigrationResultStatusSUCCESS captures enum value "SUCCESS"
	RewardMigrationResultStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *RewardMigrationResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, rewardMigrationResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RewardMigrationResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RewardMigrationResult) UnmarshalBinary(b []byte) error {
	var res RewardMigrationResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

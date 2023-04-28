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

// ConsumableEntitlementRevocationConfig Consumable entitlement revocation config
//
// swagger:model Consumable entitlement revocation config.
type ConsumableEntitlementRevocationConfig struct {

	// will do revocation if enabled, otherwise will skip do revocation.
	Enabled bool `json:"enabled"`

	// consumable entitlement revocation strategy
	// Enum: ['CUSTOM', 'REVOKE_OR_REPORT']
	Strategy string `json:"strategy,omitempty"`
}

// Validate validates this Consumable entitlement revocation config
func (m *ConsumableEntitlementRevocationConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var consumableEntitlementRevocationConfigTypeStrategyPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CUSTOM", "REVOKE_OR_REPORT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		consumableEntitlementRevocationConfigTypeStrategyPropEnum = append(consumableEntitlementRevocationConfigTypeStrategyPropEnum, v)
	}
}

const (

	// ConsumableEntitlementRevocationConfigStrategyCUSTOM captures enum value "CUSTOM"
	ConsumableEntitlementRevocationConfigStrategyCUSTOM string = "CUSTOM"

	// ConsumableEntitlementRevocationConfigStrategyREVOKEORREPORT captures enum value "REVOKE_OR_REPORT"
	ConsumableEntitlementRevocationConfigStrategyREVOKEORREPORT string = "REVOKE_OR_REPORT"
)

// prop value enum
func (m *ConsumableEntitlementRevocationConfig) validateStrategyEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, consumableEntitlementRevocationConfigTypeStrategyPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ConsumableEntitlementRevocationConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ConsumableEntitlementRevocationConfig) UnmarshalBinary(b []byte) error {
	var res ConsumableEntitlementRevocationConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

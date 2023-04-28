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

// DurableEntitlementRevocationConfig Durable entitlement revocation config
//
// swagger:model Durable entitlement revocation config.
type DurableEntitlementRevocationConfig struct {

	// will do revocation if enabled, otherwise will skip do revocation.
	Enabled bool `json:"enabled"`

	// durable entitlement revocation strategy
	// Enum: ['CUSTOM', 'REVOKE_OR_REPORT']
	Strategy string `json:"strategy,omitempty"`
}

// Validate validates this Durable entitlement revocation config
func (m *DurableEntitlementRevocationConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var durableEntitlementRevocationConfigTypeStrategyPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CUSTOM", "REVOKE_OR_REPORT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		durableEntitlementRevocationConfigTypeStrategyPropEnum = append(durableEntitlementRevocationConfigTypeStrategyPropEnum, v)
	}
}

const (

	// DurableEntitlementRevocationConfigStrategyCUSTOM captures enum value "CUSTOM"
	DurableEntitlementRevocationConfigStrategyCUSTOM string = "CUSTOM"

	// DurableEntitlementRevocationConfigStrategyREVOKEORREPORT captures enum value "REVOKE_OR_REPORT"
	DurableEntitlementRevocationConfigStrategyREVOKEORREPORT string = "REVOKE_OR_REPORT"
)

// prop value enum
func (m *DurableEntitlementRevocationConfig) validateStrategyEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, durableEntitlementRevocationConfigTypeStrategyPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DurableEntitlementRevocationConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DurableEntitlementRevocationConfig) UnmarshalBinary(b []byte) error {
	var res DurableEntitlementRevocationConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

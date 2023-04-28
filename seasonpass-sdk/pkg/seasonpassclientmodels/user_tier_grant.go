// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserTierGrant User tier grant
//
// swagger:model User tier grant.
type UserTierGrant struct {

	// count to grant
	// Format: int32
	Count int32 `json:"count,omitempty"`

	// source
	// Enum: ['PAID_FOR', 'SWEAT']
	Source string `json:"source,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`
}

// Validate validates this User tier grant
func (m *UserTierGrant) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var userTierGrantTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PAID_FOR", "SWEAT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userTierGrantTypeSourcePropEnum = append(userTierGrantTypeSourcePropEnum, v)
	}
}

const (

	// UserTierGrantSourcePAIDFOR captures enum value "PAID_FOR"
	UserTierGrantSourcePAIDFOR string = "PAID_FOR"

	// UserTierGrantSourceSWEAT captures enum value "SWEAT"
	UserTierGrantSourceSWEAT string = "SWEAT"
)

// prop value enum
func (m *UserTierGrant) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, userTierGrantTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserTierGrant) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserTierGrant) UnmarshalBinary(b []byte) error {
	var res UserTierGrant
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

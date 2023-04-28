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

// UserExpGrant User exp grant
//
// swagger:model User exp grant.
type UserExpGrant struct {

	// exp to grant
	// Format: int32
	Exp int32 `json:"exp,omitempty"`

	// source
	// Enum: ['PAID_FOR', 'SWEAT']
	Source string `json:"source,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`
}

// Validate validates this User exp grant
func (m *UserExpGrant) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var userExpGrantTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PAID_FOR", "SWEAT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userExpGrantTypeSourcePropEnum = append(userExpGrantTypeSourcePropEnum, v)
	}
}

const (

	// UserExpGrantSourcePAIDFOR captures enum value "PAID_FOR"
	UserExpGrantSourcePAIDFOR string = "PAID_FOR"

	// UserExpGrantSourceSWEAT captures enum value "SWEAT"
	UserExpGrantSourceSWEAT string = "SWEAT"
)

// prop value enum
func (m *UserExpGrant) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, userExpGrantTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserExpGrant) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserExpGrant) UnmarshalBinary(b []byte) error {
	var res UserExpGrant
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

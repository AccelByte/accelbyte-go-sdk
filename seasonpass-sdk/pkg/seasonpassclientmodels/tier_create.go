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

// TierCreate Tier create
//
// swagger:model Tier create.
type TierCreate struct {

	// zero based tier index to be inserted at, -1 means appending to the end, default -1
	// Format: int32
	Index int32 `json:"index,omitempty"`

	// create tier quantity, default 1
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// tier content, default null tier
	Tier *TierInput `json:"tier,omitempty"`
}

// Validate validates this Tier create
func (m *TierCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TierCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TierCreate) UnmarshalBinary(b []byte) error {
	var res TierCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

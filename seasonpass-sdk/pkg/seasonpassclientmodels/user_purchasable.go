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

// UserPurchasable User purchasable
//
// swagger:model User purchasable.
type UserPurchasable struct {

	// pass item id
	PassItemID string `json:"passItemId,omitempty"`

	// tier item count, default 1
	// Format: int32
	TierItemCount int32 `json:"tierItemCount,omitempty"`

	// tier item id
	TierItemID string `json:"tierItemId,omitempty"`
}

// Validate validates this User purchasable
func (m *UserPurchasable) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserPurchasable) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserPurchasable) UnmarshalBinary(b []byte) error {
	var res UserPurchasable
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

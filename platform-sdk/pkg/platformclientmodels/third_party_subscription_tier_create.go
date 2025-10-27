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

// ThirdPartySubscriptionTierCreate Third party subscription tier create
//
// swagger:model Third party subscription tier create.
type ThirdPartySubscriptionTierCreate struct {

	// Group sku
	GroupSku string `json:"groupSku,omitempty"`

	// Tier sku
	Sku string `json:"sku,omitempty"`
}

// Validate validates this Third party subscription tier create
func (m *ThirdPartySubscriptionTierCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ThirdPartySubscriptionTierCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ThirdPartySubscriptionTierCreate) UnmarshalBinary(b []byte) error {
	var res ThirdPartySubscriptionTierCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

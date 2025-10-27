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

// ThirdPartySubscriptionTierInfo Third party subscription tier info
//
// swagger:model Third party subscription tier info.
type ThirdPartySubscriptionTierInfo struct {

	// Group sku
	GroupSku string `json:"groupSku,omitempty"`

	// Tier sku
	Sku string `json:"sku,omitempty"`
}

// Validate validates this Third party subscription tier info
func (m *ThirdPartySubscriptionTierInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ThirdPartySubscriptionTierInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ThirdPartySubscriptionTierInfo) UnmarshalBinary(b []byte) error {
	var res ThirdPartySubscriptionTierInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

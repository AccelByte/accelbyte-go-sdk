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

// ThirdPartySubscriptionGroupCreate Third party subscription group create
//
// swagger:model Third party subscription group create.
type ThirdPartySubscriptionGroupCreate struct {

	// subscription group sku, unique identification
	Sku string `json:"sku,omitempty"`
}

// Validate validates this Third party subscription group create
func (m *ThirdPartySubscriptionGroupCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ThirdPartySubscriptionGroupCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ThirdPartySubscriptionGroupCreate) UnmarshalBinary(b []byte) error {
	var res ThirdPartySubscriptionGroupCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// IAPItemMappingInfo IAP item mapping info
//
// swagger:model IAP item mapping info.
type IAPItemMappingInfo struct {

	// data
	Data []*IAPItemFlatEntry `json:"data,omitempty"`
}

// Validate validates this IAP item mapping info
func (m *IAPItemMappingInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *IAPItemMappingInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPItemMappingInfo) UnmarshalBinary(b []byte) error {
	var res IAPItemMappingInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

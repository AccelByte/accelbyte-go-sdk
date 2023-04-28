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

// IAPItemConfigUpdate IAP item config update
//
// swagger:model IAP item config update.
type IAPItemConfigUpdate struct {

	// data
	Data []*IAPItemEntry `json:"data,omitempty"`
}

// Validate validates this IAP item config update
func (m *IAPItemConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *IAPItemConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPItemConfigUpdate) UnmarshalBinary(b []byte) error {
	var res IAPItemConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

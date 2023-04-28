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

// ImportStoreResult Import store result
//
// swagger:model Import store result.
type ImportStoreResult struct {

	// errors
	Errors []*ImportStoreError `json:"errors,omitempty"`

	// store info
	StoreInfo *StoreInfo `json:"storeInfo,omitempty"`

	// import result
	Success bool `json:"success"`
}

// Validate validates this Import store result
func (m *ImportStoreResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ImportStoreResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ImportStoreResult) UnmarshalBinary(b []byte) error {
	var res ImportStoreResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ApimodelMemoryResponse Apimodel memory response
//
// swagger:model Apimodel memory response.
type ApimodelMemoryResponse struct {

	// memorylimit
	// Format: int32
	MemoryLimit int32 `json:"memoryLimit,omitempty"`

	// requestmemory
	// Format: int32
	RequestMemory int32 `json:"requestMemory,omitempty"`
}

// Validate validates this Apimodel memory response
func (m *ApimodelMemoryResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelMemoryResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelMemoryResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelMemoryResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

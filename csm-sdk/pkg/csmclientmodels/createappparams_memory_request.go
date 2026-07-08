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

// CreateappparamsMemoryRequest Createappparams memory request
//
// swagger:model Createappparams memory request.
type CreateappparamsMemoryRequest struct {

	// requestmemory
	// Format: int32
	RequestMemory int32 `json:"requestMemory,omitempty"`
}

// Validate validates this Createappparams memory request
func (m *CreateappparamsMemoryRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreateappparamsMemoryRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreateappparamsMemoryRequest) UnmarshalBinary(b []byte) error {
	var res CreateappparamsMemoryRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

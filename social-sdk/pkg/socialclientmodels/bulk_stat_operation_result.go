// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// BulkStatOperationResult Bulk stat operation result
//
// swagger:model Bulk stat operation result.
type BulkStatOperationResult struct {

	// details
	Details interface{} `json:"details,omitempty"`

	// requestid
	RequestID string `json:"requestId,omitempty"`

	// statcode
	StatCode string `json:"statCode,omitempty"`

	// success
	Success bool `json:"success"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Bulk stat operation result
func (m *BulkStatOperationResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkStatOperationResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkStatOperationResult) UnmarshalBinary(b []byte) error {
	var res BulkStatOperationResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

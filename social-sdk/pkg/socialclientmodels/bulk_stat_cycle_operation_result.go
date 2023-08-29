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

// BulkStatCycleOperationResult Bulk stat cycle operation result
//
// swagger:model Bulk stat cycle operation result.
type BulkStatCycleOperationResult struct {

	// cycleid
	CycleID string `json:"cycleId,omitempty"`

	// details
	Details interface{} `json:"details,omitempty"`

	// statcode
	StatCode string `json:"statCode,omitempty"`

	// success
	Success bool `json:"success"`
}

// Validate validates this Bulk stat cycle operation result
func (m *BulkStatCycleOperationResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkStatCycleOperationResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkStatCycleOperationResult) UnmarshalBinary(b []byte) error {
	var res BulkStatCycleOperationResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

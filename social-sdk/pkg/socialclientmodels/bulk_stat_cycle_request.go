// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// BulkStatCycleRequest Bulk stat cycle request
//
// swagger:model Bulk stat cycle request.
type BulkStatCycleRequest struct {

	// cycleids
	// Unique: true
	// Required: true
	CycleIds []string `json:"cycleIds"`
}

// Validate validates this Bulk stat cycle request
func (m *BulkStatCycleRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCycleIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *BulkStatCycleRequest) validateCycleIds(formats strfmt.Registry) error {

	if err := validate.Required("cycleIds", "body", m.CycleIds); err != nil {
		return err
	}
	if err := validate.UniqueItems("cycleIds", "body", m.CycleIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BulkStatCycleRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkStatCycleRequest) UnmarshalBinary(b []byte) error {
	var res BulkStatCycleRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

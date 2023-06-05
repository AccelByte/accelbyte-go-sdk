// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsQueryMockBy Models query mock by
//
// swagger:model Models query mock by.
type ModelsQueryMockBy struct {

	// timestamp_after
	// Required: true
	// Format: int64
	TimestampAfter *int64 `json:"timestamp_after"`
}

// Validate validates this Models query mock by
func (m *ModelsQueryMockBy) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTimestampAfter(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsQueryMockBy) validateTimestampAfter(formats strfmt.Registry) error {

	if err := validate.Required("timestamp_after", "body", m.TimestampAfter); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsQueryMockBy) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsQueryMockBy) UnmarshalBinary(b []byte) error {
	var res ModelsQueryMockBy
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

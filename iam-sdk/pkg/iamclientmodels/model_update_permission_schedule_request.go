// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelUpdatePermissionScheduleRequest Model update permission schedule request
//
// swagger:model Model update permission schedule request.
type ModelUpdatePermissionScheduleRequest struct {

	// schedaction
	// Format: int32
	SchedAction int32 `json:"SchedAction,omitempty"`

	// schedcron
	SchedCron string `json:"SchedCron,omitempty"`

	// schedrange
	SchedRange []string `json:"SchedRange,omitempty"`
}

// Validate validates this Model update permission schedule request
func (m *ModelUpdatePermissionScheduleRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpdatePermissionScheduleRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpdatePermissionScheduleRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpdatePermissionScheduleRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

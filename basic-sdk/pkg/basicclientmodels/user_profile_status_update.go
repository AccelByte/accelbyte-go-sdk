// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserProfileStatusUpdate User profile status update
//
// swagger:model User profile status update.
type UserProfileStatusUpdate struct {

	// status, ACTIVE or INACTIVE
	// Enum: ['ACTIVE', 'INACTIVE']
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this User profile status update
func (m *UserProfileStatusUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var userProfileStatusUpdateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userProfileStatusUpdateTypeStatusPropEnum = append(userProfileStatusUpdateTypeStatusPropEnum, v)
	}
}

const (

	// UserProfileStatusUpdateStatusACTIVE captures enum value "ACTIVE"
	UserProfileStatusUpdateStatusACTIVE string = "ACTIVE"

	// UserProfileStatusUpdateStatusINACTIVE captures enum value "INACTIVE"
	UserProfileStatusUpdateStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *UserProfileStatusUpdate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, userProfileStatusUpdateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *UserProfileStatusUpdate) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserProfileStatusUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserProfileStatusUpdate) UnmarshalBinary(b []byte) error {
	var res UserProfileStatusUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

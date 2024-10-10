// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserProfileUpdateAllowStatus Model user profile update allow status
//
// swagger:model Model user profile update allow status.
type ModelUserProfileUpdateAllowStatus struct {

	// status
	// Required: true
	Status []*ModelFieldUpdateAllowStatus `json:"status"`
}

// Validate validates this Model user profile update allow status
func (m *ModelUserProfileUpdateAllowStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserProfileUpdateAllowStatus) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	for i := 0; i < len(m.Status); i++ {
		if swag.IsZero(m.Status[i]) { // not required
			continue
		}

		if m.Status[i] != nil {
			if err := m.Status[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("status" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserProfileUpdateAllowStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserProfileUpdateAllowStatus) UnmarshalBinary(b []byte) error {
	var res ModelUserProfileUpdateAllowStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

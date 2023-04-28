// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ADTOObjectForEQU8UserBanStatus A DTO object for equ8 user ban status
//
// swagger:model A DTO object for equ8 user ban status.
type ADTOObjectForEQU8UserBanStatus struct {

	// expire time, null if the user is permanently banned
	// Format: date-time
	Expires *strfmt.DateTime `json:"expires,omitempty"`

	// userId
	UserID string `json:"userId,omitempty"`
}

// Validate validates this A DTO object for equ8 user ban status
func (m *ADTOObjectForEQU8UserBanStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ADTOObjectForEQU8UserBanStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ADTOObjectForEQU8UserBanStatus) UnmarshalBinary(b []byte) error {
	var res ADTOObjectForEQU8UserBanStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

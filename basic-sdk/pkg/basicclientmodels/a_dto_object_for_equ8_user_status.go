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

// ADTOObjectForEQU8UserStatus A DTO object for equ8 user status
//
// swagger:model A DTO object for equ8 user status.
type ADTOObjectForEQU8UserStatus struct {

	// action comment of this active action
	ActionComment string `json:"actionComment,omitempty"`

	// action id
	// Format: int32
	ActionID int32 `json:"actionId,omitempty"`

	// action end date
	// Format: date-time
	Expires *strfmt.DateTime `json:"expires,omitempty"`

	// current user
	UserID string `json:"userId,omitempty"`

	// action start date
	// Format: date-time
	When *strfmt.DateTime `json:"when,omitempty"`
}

// Validate validates this A DTO object for equ8 user status
func (m *ADTOObjectForEQU8UserStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ADTOObjectForEQU8UserStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ADTOObjectForEQU8UserStatus) UnmarshalBinary(b []byte) error {
	var res ADTOObjectForEQU8UserStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

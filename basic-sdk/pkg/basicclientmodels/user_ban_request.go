// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserBanRequest User ban request
//
// swagger:model User ban request.
type UserBanRequest struct {

	// action id
	// Required: true
	// Format: int32
	ActionID *int32 `json:"actionId"`

	// comment
	Comment string `json:"comment,omitempty"`

	// user ids that will be banned
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this User ban request
func (m *UserBanRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UserBanRequest) validateActionID(formats strfmt.Registry) error {

	if err := validate.Required("actionId", "body", m.ActionID); err != nil {
		return err
	}

	return nil
}

func (m *UserBanRequest) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserBanRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserBanRequest) UnmarshalBinary(b []byte) error {
	var res UserBanRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

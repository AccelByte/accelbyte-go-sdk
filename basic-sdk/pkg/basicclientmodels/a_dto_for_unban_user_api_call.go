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

// ADTOForUnbanUserAPICall A DTO for unban user API call
//
// swagger:model A DTO for unban user API call.
type ADTOForUnbanUserAPICall struct {

	// comment
	Comment string `json:"comment,omitempty"`

	// user ids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this A DTO for unban user API call
func (m *ADTOForUnbanUserAPICall) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ADTOForUnbanUserAPICall) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ADTOForUnbanUserAPICall) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ADTOForUnbanUserAPICall) UnmarshalBinary(b []byte) error {
	var res ADTOForUnbanUserAPICall
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

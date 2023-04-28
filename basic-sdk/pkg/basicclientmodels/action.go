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

// Action Action
//
// swagger:model Action.
type Action struct {

	// color
	Color string `json:"color,omitempty"`

	// action description
	Description string `json:"description,omitempty"`

	// action duration
	// Format: int64
	Duration int64 `json:"duration,omitempty"`

	// icon
	Icon string `json:"icon,omitempty"`

	// action id
	// Format: int32
	ID int32 `json:"id,omitempty"`

	// action name
	Name string `json:"name,omitempty"`

	// action priority
	// Format: int32
	Priority int32 `json:"priority,omitempty"`
}

// Validate validates this Action
func (m *Action) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *Action) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Action) UnmarshalBinary(b []byte) error {
	var res Action
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreatorFollowState Models creator follow state
//
// swagger:model Models creator follow state.
type ModelsCreatorFollowState struct {

	// state
	// Required: true
	State *bool `json:"state"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models creator follow state
func (m *ModelsCreatorFollowState) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateState(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreatorFollowState) validateState(formats strfmt.Registry) error {

	if err := validate.Required("state", "body", m.State); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreatorFollowState) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreatorFollowState) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreatorFollowState) UnmarshalBinary(b []byte) error {
	var res ModelsCreatorFollowState
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

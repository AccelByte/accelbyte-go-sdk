// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboardclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsSetUserVisibilityRequest Models set user visibility request
//
// swagger:model Models set user visibility request.
type ModelsSetUserVisibilityRequest struct {

	// visibility
	// Required: true
	Visibility *bool `json:"visibility"`
}

// Validate validates this Models set user visibility request
func (m *ModelsSetUserVisibilityRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateVisibility(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSetUserVisibilityRequest) validateVisibility(formats strfmt.Registry) error {

	if err := validate.Required("visibility", "body", m.Visibility); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSetUserVisibilityRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSetUserVisibilityRequest) UnmarshalBinary(b []byte) error {
	var res ModelsSetUserVisibilityRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

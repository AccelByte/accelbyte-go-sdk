// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionbrowserclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAddPlayerRequest Models add player request
//
// swagger:model Models add player request.
type ModelsAddPlayerRequest struct {

	// as_spectator
	// Required: true
	AsSpectator *bool `json:"as_spectator"`

	// user_id
	// Required: true
	UserID *string `json:"user_id"`
}

// Validate validates this Models add player request
func (m *ModelsAddPlayerRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAsSpectator(formats); err != nil {
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

func (m *ModelsAddPlayerRequest) validateAsSpectator(formats strfmt.Registry) error {

	if err := validate.Required("as_spectator", "body", m.AsSpectator); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAddPlayerRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAddPlayerRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAddPlayerRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAddPlayerRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

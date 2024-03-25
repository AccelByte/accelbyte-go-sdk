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

// ModelsActiveMatchmakingGameResponse Models active matchmaking game response
//
// swagger:model Models active matchmaking game response.
type ModelsActiveMatchmakingGameResponse struct {

	// pagination
	// Required: true
	Pagination *ModelsPagingCursor `json:"pagination"`

	// sessions
	Sessions []*ModelsGameSession `json:"sessions,omitempty"`
}

// Validate validates this Models active matchmaking game response
func (m *ModelsActiveMatchmakingGameResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePagination(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsActiveMatchmakingGameResponse) validatePagination(formats strfmt.Registry) error {

	if err := validate.Required("pagination", "body", m.Pagination); err != nil {
		return err
	}

	if m.Pagination != nil {
		if err := m.Pagination.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("pagination")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsActiveMatchmakingGameResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsActiveMatchmakingGameResponse) UnmarshalBinary(b []byte) error {
	var res ModelsActiveMatchmakingGameResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

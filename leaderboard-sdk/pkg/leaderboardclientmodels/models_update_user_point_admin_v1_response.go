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

// ModelsUpdateUserPointAdminV1Response Models update user point admin V1 response
//
// swagger:model Models update user point admin V1 response.
type ModelsUpdateUserPointAdminV1Response struct {

	// point
	// Required: true
	// Format: double
	Point *float64 `json:"point"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models update user point admin V1 response
func (m *ModelsUpdateUserPointAdminV1Response) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePoint(formats); err != nil {
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

func (m *ModelsUpdateUserPointAdminV1Response) validatePoint(formats strfmt.Registry) error {

	if err := validate.Required("point", "body", m.Point); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateUserPointAdminV1Response) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateUserPointAdminV1Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateUserPointAdminV1Response) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateUserPointAdminV1Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

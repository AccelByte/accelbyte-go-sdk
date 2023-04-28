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

// ModelsUpdateUserPointAdminV1Request Models update user point admin V1 request
//
// swagger:model Models update user point admin V1 request.
type ModelsUpdateUserPointAdminV1Request struct {

	// inc
	// Required: true
	// Format: double
	Inc *float64 `json:"inc"`

	// latestvalue
	// Required: true
	// Format: double
	LatestValue *float64 `json:"latestValue"`
}

// Validate validates this Models update user point admin V1 request
func (m *ModelsUpdateUserPointAdminV1Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInc(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLatestValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateUserPointAdminV1Request) validateInc(formats strfmt.Registry) error {

	if err := validate.Required("inc", "body", m.Inc); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateUserPointAdminV1Request) validateLatestValue(formats strfmt.Registry) error {

	if err := validate.Required("latestValue", "body", m.LatestValue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateUserPointAdminV1Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateUserPointAdminV1Request) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateUserPointAdminV1Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

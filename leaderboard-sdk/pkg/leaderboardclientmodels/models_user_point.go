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

// ModelsUserPoint Models user point
//
// swagger:model Models user point.
type ModelsUserPoint struct {

	// additionaldata
	// Required: true
	AdditionalData interface{} `json:"additionalData"`

	// hidden
	Hidden bool `json:"hidden"`

	// point
	// Required: true
	// Format: double
	Point *float64 `json:"point"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models user point
func (m *ModelsUserPoint) Validate(formats strfmt.Registry) error {
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

func (m *ModelsUserPoint) validatePoint(formats strfmt.Registry) error {

	if err := validate.Required("point", "body", m.Point); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserPoint) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserPoint) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserPoint) UnmarshalBinary(b []byte) error {
	var res ModelsUserPoint
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

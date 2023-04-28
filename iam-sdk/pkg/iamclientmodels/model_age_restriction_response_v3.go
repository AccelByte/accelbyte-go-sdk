// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelAgeRestrictionResponseV3 Model age restriction response V3
//
// swagger:model Model age restriction response V3.
type ModelAgeRestrictionResponseV3 struct {

	// agerestriction
	// Required: true
	// Format: int32
	AgeRestriction *int32 `json:"ageRestriction"`

	// enable
	// Required: true
	Enable *bool `json:"enable"`
}

// Validate validates this Model age restriction response V3
func (m *ModelAgeRestrictionResponseV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAgeRestriction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnable(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelAgeRestrictionResponseV3) validateAgeRestriction(formats strfmt.Registry) error {

	if err := validate.Required("ageRestriction", "body", m.AgeRestriction); err != nil {
		return err
	}

	return nil
}

func (m *ModelAgeRestrictionResponseV3) validateEnable(formats strfmt.Registry) error {

	if err := validate.Required("enable", "body", m.Enable); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAgeRestrictionResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAgeRestrictionResponseV3) UnmarshalBinary(b []byte) error {
	var res ModelAgeRestrictionResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

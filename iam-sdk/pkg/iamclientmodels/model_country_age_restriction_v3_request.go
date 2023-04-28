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

// ModelCountryAgeRestrictionV3Request Model country age restriction V3 request
//
// swagger:model Model country age restriction V3 request.
type ModelCountryAgeRestrictionV3Request struct {

	// agerestriction
	// Required: true
	// Format: int32
	AgeRestriction *int32 `json:"ageRestriction"`
}

// Validate validates this Model country age restriction V3 request
func (m *ModelCountryAgeRestrictionV3Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAgeRestriction(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelCountryAgeRestrictionV3Request) validateAgeRestriction(formats strfmt.Registry) error {

	if err := validate.Required("ageRestriction", "body", m.AgeRestriction); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCountryAgeRestrictionV3Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCountryAgeRestrictionV3Request) UnmarshalBinary(b []byte) error {
	var res ModelCountryAgeRestrictionV3Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

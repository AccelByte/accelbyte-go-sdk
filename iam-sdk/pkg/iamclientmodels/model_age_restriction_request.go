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

// ModelAgeRestrictionRequest Model age restriction request
//
// swagger:model Model age restriction request.
type ModelAgeRestrictionRequest struct {

	// agerestriction
	// Required: true
	// Format: int32
	AgeRestriction *int32 `json:"AgeRestriction"`

	// enable
	// Required: true
	Enable *bool `json:"Enable"`
}

// Validate validates this Model age restriction request
func (m *ModelAgeRestrictionRequest) Validate(formats strfmt.Registry) error {
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

func (m *ModelAgeRestrictionRequest) validateAgeRestriction(formats strfmt.Registry) error {

	if err := validate.Required("AgeRestriction", "body", m.AgeRestriction); err != nil {
		return err
	}

	return nil
}

func (m *ModelAgeRestrictionRequest) validateEnable(formats strfmt.Registry) error {

	if err := validate.Required("Enable", "body", m.Enable); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAgeRestrictionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAgeRestrictionRequest) UnmarshalBinary(b []byte) error {
	var res ModelAgeRestrictionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

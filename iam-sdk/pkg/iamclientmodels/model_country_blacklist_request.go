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

// ModelCountryBlacklistRequest Model country blacklist request
//
// swagger:model Model country blacklist request.
type ModelCountryBlacklistRequest struct {

	// blacklist
	// Required: true
	Blacklist []string `json:"blacklist"`
}

// Validate validates this Model country blacklist request
func (m *ModelCountryBlacklistRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBlacklist(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelCountryBlacklistRequest) validateBlacklist(formats strfmt.Registry) error {

	if err := validate.Required("blacklist", "body", m.Blacklist); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCountryBlacklistRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCountryBlacklistRequest) UnmarshalBinary(b []byte) error {
	var res ModelCountryBlacklistRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

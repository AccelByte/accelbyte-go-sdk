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

// ModelCountryBlacklistResponse Model country blacklist response
//
// swagger:model Model country blacklist response.
type ModelCountryBlacklistResponse struct {

	// blacklist
	// Required: true
	Blacklist []string `json:"blacklist"`
}

// Validate validates this Model country blacklist response
func (m *ModelCountryBlacklistResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBlacklist(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelCountryBlacklistResponse) validateBlacklist(formats strfmt.Registry) error {

	if err := validate.Required("blacklist", "body", m.Blacklist); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCountryBlacklistResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCountryBlacklistResponse) UnmarshalBinary(b []byte) error {
	var res ModelCountryBlacklistResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

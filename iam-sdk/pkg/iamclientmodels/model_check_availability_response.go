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

// ModelCheckAvailabilityResponse Model check availability response
//
// swagger:model Model check availability response.
type ModelCheckAvailabilityResponse struct {

	// accessible
	// Required: true
	Accessible *bool `json:"Accessible"`

	// platformerrormessage
	// Required: true
	PlatformErrorMessage map[string]string `json:"PlatformErrorMessage"`
}

// Validate validates this Model check availability response
func (m *ModelCheckAvailabilityResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAccessible(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelCheckAvailabilityResponse) validateAccessible(formats strfmt.Registry) error {

	if err := validate.Required("Accessible", "body", m.Accessible); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelCheckAvailabilityResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelCheckAvailabilityResponse) UnmarshalBinary(b []byte) error {
	var res ModelCheckAvailabilityResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

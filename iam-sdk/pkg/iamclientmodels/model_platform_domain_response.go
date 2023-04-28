// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelPlatformDomainResponse Model platform domain response
//
// swagger:model Model platform domain response.
type ModelPlatformDomainResponse struct {

	// registereddomains
	// Required: true
	RegisteredDomains []*AccountcommonRegisteredDomain `json:"registeredDomains"`
}

// Validate validates this Model platform domain response
func (m *ModelPlatformDomainResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRegisteredDomains(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPlatformDomainResponse) validateRegisteredDomains(formats strfmt.Registry) error {

	if err := validate.Required("registeredDomains", "body", m.RegisteredDomains); err != nil {
		return err
	}

	for i := 0; i < len(m.RegisteredDomains); i++ {
		if swag.IsZero(m.RegisteredDomains[i]) { // not required
			continue
		}

		if m.RegisteredDomains[i] != nil {
			if err := m.RegisteredDomains[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("registeredDomains" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPlatformDomainResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPlatformDomainResponse) UnmarshalBinary(b []byte) error {
	var res ModelPlatformDomainResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

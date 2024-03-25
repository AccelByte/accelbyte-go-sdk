// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIDevelopmentServerConfigurationCreateResponse Api development server configuration create response
//
// swagger:model Api development server configuration create response.
type APIDevelopmentServerConfigurationCreateResponse struct {

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Api development server configuration create response
func (m *APIDevelopmentServerConfigurationCreateResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIDevelopmentServerConfigurationCreateResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIDevelopmentServerConfigurationCreateResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIDevelopmentServerConfigurationCreateResponse) UnmarshalBinary(b []byte) error {
	var res APIDevelopmentServerConfigurationCreateResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

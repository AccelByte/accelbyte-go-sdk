// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APIDevelopmentServerConfigurationUpdateRequest Api development server configuration update request
//
// swagger:model Api development server configuration update request.
type APIDevelopmentServerConfigurationUpdateRequest struct {

	// commandlinearguments
	CommandLineArguments string `json:"commandLineArguments,omitempty"`

	// expiresat
	ExpiresAt string `json:"expiresAt,omitempty"`
}

// Validate validates this Api development server configuration update request
func (m *APIDevelopmentServerConfigurationUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIDevelopmentServerConfigurationUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIDevelopmentServerConfigurationUpdateRequest) UnmarshalBinary(b []byte) error {
	var res APIDevelopmentServerConfigurationUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

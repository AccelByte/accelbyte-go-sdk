// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UpdateCountryGroupRequest Update country group request
//
// swagger:model Update country group request.
type UpdateCountryGroupRequest struct {

	// countries
	Countries []*CountryObject `json:"countries,omitempty"`

	// countrygroupname
	CountryGroupName string `json:"countryGroupName,omitempty"`
}

// Validate validates this Update country group request
func (m *UpdateCountryGroupRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UpdateCountryGroupRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UpdateCountryGroupRequest) UnmarshalBinary(b []byte) error {
	var res UpdateCountryGroupRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

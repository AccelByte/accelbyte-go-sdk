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

// AddCountryGroupRequest Add country group request
//
// swagger:model Add country group request.
type AddCountryGroupRequest struct {

	// countries
	Countries []*CountryObject `json:"countries,omitempty"`

	// countrygroupcode
	CountryGroupCode string `json:"countryGroupCode,omitempty"`

	// countrygroupname
	CountryGroupName string `json:"countryGroupName,omitempty"`
}

// Validate validates this Add country group request
func (m *AddCountryGroupRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AddCountryGroupRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AddCountryGroupRequest) UnmarshalBinary(b []byte) error {
	var res AddCountryGroupRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

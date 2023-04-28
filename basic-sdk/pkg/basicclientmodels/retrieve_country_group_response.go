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

// RetrieveCountryGroupResponse Retrieve country group response
//
// swagger:model Retrieve country group response.
type RetrieveCountryGroupResponse struct {

	// countries
	Countries []*CountryObject `json:"countries,omitempty"`

	// countrygroupcode
	CountryGroupCode string `json:"countryGroupCode,omitempty"`

	// countrygroupname
	CountryGroupName string `json:"countryGroupName,omitempty"`
}

// Validate validates this Retrieve country group response
func (m *RetrieveCountryGroupResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveCountryGroupResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveCountryGroupResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveCountryGroupResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

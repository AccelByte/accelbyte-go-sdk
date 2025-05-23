// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIInstanceTypesResponse Api instance types response
//
// swagger:model Api instance types response.
type APIInstanceTypesResponse struct {

	// availableinstancetypes
	// Required: true
	AvailableInstanceTypes []*APIInstanceType `json:"availableInstanceTypes"`
}

// Validate validates this Api instance types response
func (m *APIInstanceTypesResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvailableInstanceTypes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIInstanceTypesResponse) validateAvailableInstanceTypes(formats strfmt.Registry) error {

	if err := validate.Required("availableInstanceTypes", "body", m.AvailableInstanceTypes); err != nil {
		return err
	}

	for i := 0; i < len(m.AvailableInstanceTypes); i++ {
		if swag.IsZero(m.AvailableInstanceTypes[i]) { // not required
			continue
		}

		if m.AvailableInstanceTypes[i] != nil {
			if err := m.AvailableInstanceTypes[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("availableInstanceTypes" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIInstanceTypesResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIInstanceTypesResponse) UnmarshalBinary(b []byte) error {
	var res APIInstanceTypesResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

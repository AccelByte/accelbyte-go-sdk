// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// DTOServiceConfigurationUpdateRequest Dto service configuration update request
//
// swagger:model Dto service configuration update request.
type DTOServiceConfigurationUpdateRequest struct {

	// list of services
	// Required: true
	Services []*DTOServiceConfigurationDTO `json:"services"`
}

// Validate validates this Dto service configuration update request
func (m *DTOServiceConfigurationUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateServices(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DTOServiceConfigurationUpdateRequest) validateServices(formats strfmt.Registry) error {

	if err := validate.Required("services", "body", m.Services); err != nil {
		return err
	}

	for i := 0; i < len(m.Services); i++ {
		if swag.IsZero(m.Services[i]) { // not required
			continue
		}

		if m.Services[i] != nil {
			if err := m.Services[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("services" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOServiceConfigurationUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOServiceConfigurationUpdateRequest) UnmarshalBinary(b []byte) error {
	var res DTOServiceConfigurationUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

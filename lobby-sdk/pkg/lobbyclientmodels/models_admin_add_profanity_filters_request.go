// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAdminAddProfanityFiltersRequest Models admin add profanity filters request
//
// swagger:model Models admin add profanity filters request.
type ModelsAdminAddProfanityFiltersRequest struct {

	// filters
	// Required: true
	Filters []*ModelsAdminAddProfanityFiltersFilterRequest `json:"filters"`
}

// Validate validates this Models admin add profanity filters request
func (m *ModelsAdminAddProfanityFiltersRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFilters(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminAddProfanityFiltersRequest) validateFilters(formats strfmt.Registry) error {

	if err := validate.Required("filters", "body", m.Filters); err != nil {
		return err
	}

	for i := 0; i < len(m.Filters); i++ {
		if swag.IsZero(m.Filters[i]) { // not required
			continue
		}

		if m.Filters[i] != nil {
			if err := m.Filters[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("filters" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminAddProfanityFiltersRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminAddProfanityFiltersRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminAddProfanityFiltersRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

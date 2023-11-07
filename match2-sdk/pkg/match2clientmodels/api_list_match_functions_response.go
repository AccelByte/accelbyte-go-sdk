// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIListMatchFunctionsResponse Api list match functions response
//
// swagger:model Api list match functions response.
type APIListMatchFunctionsResponse struct {

	// configs
	Configs []*APIMatchFunctionConfig `json:"configs,omitempty"`

	// functions
	// Required: true
	Functions []string `json:"functions"`

	// pagination
	// Required: true
	Pagination *ModelsPagination `json:"pagination"`
}

// Validate validates this Api list match functions response
func (m *APIListMatchFunctionsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFunctions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePagination(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIListMatchFunctionsResponse) validateFunctions(formats strfmt.Registry) error {

	if err := validate.Required("functions", "body", m.Functions); err != nil {
		return err
	}

	return nil
}

func (m *APIListMatchFunctionsResponse) validatePagination(formats strfmt.Registry) error {

	if err := validate.Required("pagination", "body", m.Pagination); err != nil {
		return err
	}

	if m.Pagination != nil {
		if err := m.Pagination.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("pagination")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIListMatchFunctionsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIListMatchFunctionsResponse) UnmarshalBinary(b []byte) error {
	var res APIListMatchFunctionsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

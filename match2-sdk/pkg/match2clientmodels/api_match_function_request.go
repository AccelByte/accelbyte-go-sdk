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

// APIMatchFunctionRequest Api match function request
//
// swagger:model Api match function request.
type APIMatchFunctionRequest struct {

	// match_function
	// Required: true
	MatchFunction *string `json:"match_function"`

	// serviceappname
	// Required: true
	ServiceAppName *string `json:"serviceAppName"`

	// url
	// Required: true
	URL *string `json:"url"`
}

// Validate validates this Api match function request
func (m *APIMatchFunctionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchFunction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServiceAppName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIMatchFunctionRequest) validateMatchFunction(formats strfmt.Registry) error {

	if err := validate.Required("match_function", "body", m.MatchFunction); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchFunctionRequest) validateServiceAppName(formats strfmt.Registry) error {

	if err := validate.Required("serviceAppName", "body", m.ServiceAppName); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchFunctionRequest) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIMatchFunctionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMatchFunctionRequest) UnmarshalBinary(b []byte) error {
	var res APIMatchFunctionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

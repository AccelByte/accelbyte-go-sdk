// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelGetAppStatusProgressResponse Apimodel get app status progress response
//
// swagger:model Apimodel get app status progress response.
type ApimodelGetAppStatusProgressResponse struct {

	// app_id
	// Required: true
	AppID *string `json:"app_id"`

	// app_name
	// Required: true
	AppName *string `json:"app_name"`

	// operation_id
	// Required: true
	OperationID *string `json:"operation_id"`

	// steps
	// Required: true
	Steps []*ApimodelAppStatusProgressStep `json:"steps"`
}

// Validate validates this Apimodel get app status progress response
func (m *ApimodelGetAppStatusProgressResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOperationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSteps(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetAppStatusProgressResponse) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("app_id", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetAppStatusProgressResponse) validateAppName(formats strfmt.Registry) error {

	if err := validate.Required("app_name", "body", m.AppName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetAppStatusProgressResponse) validateOperationID(formats strfmt.Registry) error {

	if err := validate.Required("operation_id", "body", m.OperationID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetAppStatusProgressResponse) validateSteps(formats strfmt.Registry) error {

	if err := validate.Required("steps", "body", m.Steps); err != nil {
		return err
	}

	for i := 0; i < len(m.Steps); i++ {
		if swag.IsZero(m.Steps[i]) { // not required
			continue
		}

		if m.Steps[i] != nil {
			if err := m.Steps[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("steps" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetAppStatusProgressResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetAppStatusProgressResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelGetAppStatusProgressResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelUpdateDebugModeRequest Apimodel update debug mode request
//
// swagger:model Apimodel update debug mode request.
type ApimodelUpdateDebugModeRequest struct {

	// enabledebugmode
	// Required: true
	EnableDebugMode *bool `json:"enableDebugMode"`
}

// Validate validates this Apimodel update debug mode request
func (m *ApimodelUpdateDebugModeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnableDebugMode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelUpdateDebugModeRequest) validateEnableDebugMode(formats strfmt.Registry) error {

	if err := validate.Required("enableDebugMode", "body", m.EnableDebugMode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelUpdateDebugModeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelUpdateDebugModeRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelUpdateDebugModeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

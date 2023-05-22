// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsServerDeploymentConfigSessionTimeoutResponse Models server deployment config session timeout response
//
// swagger:model Models server deployment config session timeout response.
type ModelsServerDeploymentConfigSessionTimeoutResponse struct {

	// session_timeout
	// Required: true
	// Format: int32
	SessionTimeout *int32 `json:"session_timeout"`
}

// Validate validates this Models server deployment config session timeout response
func (m *ModelsServerDeploymentConfigSessionTimeoutResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSessionTimeout(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsServerDeploymentConfigSessionTimeoutResponse) validateSessionTimeout(formats strfmt.Registry) error {

	if err := validate.Required("session_timeout", "body", m.SessionTimeout); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsServerDeploymentConfigSessionTimeoutResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsServerDeploymentConfigSessionTimeoutResponse) UnmarshalBinary(b []byte) error {
	var res ModelsServerDeploymentConfigSessionTimeoutResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// GoogleIAPConfigRequest Google IAP config request
//
// swagger:model Google IAP config request.
type GoogleIAPConfigRequest struct {

	// applicationName
	// Required: true
	ApplicationName *string `json:"applicationName"`

	// serviceAccountId
	// Required: true
	ServiceAccountID *string `json:"serviceAccountId"`
}

// Validate validates this Google IAP config request
func (m *GoogleIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateApplicationName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServiceAccountID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GoogleIAPConfigRequest) validateApplicationName(formats strfmt.Registry) error {

	if err := validate.Required("applicationName", "body", m.ApplicationName); err != nil {
		return err
	}

	return nil
}

func (m *GoogleIAPConfigRequest) validateServiceAccountID(formats strfmt.Registry) error {

	if err := validate.Required("serviceAccountId", "body", m.ServiceAccountID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GoogleIAPConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GoogleIAPConfigRequest) UnmarshalBinary(b []byte) error {
	var res GoogleIAPConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

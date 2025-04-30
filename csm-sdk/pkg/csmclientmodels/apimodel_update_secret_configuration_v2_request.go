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

// ApimodelUpdateSecretConfigurationV2Request Apimodel update secret configuration V2 request
//
// swagger:model Apimodel update secret configuration V2 request.
type ApimodelUpdateSecretConfigurationV2Request struct {

	// description
	Description string `json:"description,omitempty"`

	// value
	// Required: true
	Value *string `json:"value"`
}

// Validate validates this Apimodel update secret configuration V2 request
func (m *ApimodelUpdateSecretConfigurationV2Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelUpdateSecretConfigurationV2Request) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelUpdateSecretConfigurationV2Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelUpdateSecretConfigurationV2Request) UnmarshalBinary(b []byte) error {
	var res ApimodelUpdateSecretConfigurationV2Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

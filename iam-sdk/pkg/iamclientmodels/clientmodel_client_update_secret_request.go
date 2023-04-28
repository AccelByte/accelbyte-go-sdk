// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ClientmodelClientUpdateSecretRequest Clientmodel client update secret request
//
// swagger:model Clientmodel client update secret request.
type ClientmodelClientUpdateSecretRequest struct {

	// newsecret
	// Required: true
	NewSecret *string `json:"NewSecret"`
}

// Validate validates this Clientmodel client update secret request
func (m *ClientmodelClientUpdateSecretRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNewSecret(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelClientUpdateSecretRequest) validateNewSecret(formats strfmt.Registry) error {

	if err := validate.Required("NewSecret", "body", m.NewSecret); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientUpdateSecretRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientUpdateSecretRequest) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientUpdateSecretRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// ClientmodelV3ClientUpdateSecretRequest Clientmodel V3 client update secret request
//
// swagger:model Clientmodel V3 client update secret request.
type ClientmodelV3ClientUpdateSecretRequest struct {

	// newsecret
	// Required: true
	NewSecret *string `json:"newSecret"`
}

// Validate validates this Clientmodel V3 client update secret request
func (m *ClientmodelV3ClientUpdateSecretRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNewSecret(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelV3ClientUpdateSecretRequest) validateNewSecret(formats strfmt.Registry) error {

	if err := validate.Required("newSecret", "body", m.NewSecret); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelV3ClientUpdateSecretRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelV3ClientUpdateSecretRequest) UnmarshalBinary(b []byte) error {
	var res ClientmodelV3ClientUpdateSecretRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

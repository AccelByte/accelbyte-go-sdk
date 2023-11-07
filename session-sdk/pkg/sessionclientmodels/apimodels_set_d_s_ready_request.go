// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsSetDSReadyRequest Apimodels set DS ready request
//
// swagger:model Apimodels set DS ready request.
type ApimodelsSetDSReadyRequest struct {

	// ready
	// Required: true
	Ready *bool `json:"ready"`
}

// Validate validates this Apimodels set DS ready request
func (m *ApimodelsSetDSReadyRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateReady(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsSetDSReadyRequest) validateReady(formats strfmt.Registry) error {

	if err := validate.Required("ready", "body", m.Ready); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsSetDSReadyRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsSetDSReadyRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsSetDSReadyRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

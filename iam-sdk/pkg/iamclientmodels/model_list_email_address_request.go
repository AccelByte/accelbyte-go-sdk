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

// ModelListEmailAddressRequest Model list email address request
//
// swagger:model Model list email address request.
type ModelListEmailAddressRequest struct {

	// listemailaddressrequest
	// Required: true
	ListEmailAddressRequest []string `json:"listEmailAddressRequest"`
}

// Validate validates this Model list email address request
func (m *ModelListEmailAddressRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateListEmailAddressRequest(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelListEmailAddressRequest) validateListEmailAddressRequest(formats strfmt.Registry) error {

	if err := validate.Required("listEmailAddressRequest", "body", m.ListEmailAddressRequest); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelListEmailAddressRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelListEmailAddressRequest) UnmarshalBinary(b []byte) error {
	var res ModelListEmailAddressRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

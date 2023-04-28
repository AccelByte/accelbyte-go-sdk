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

// ClientmodelClientUpdateRequest Clientmodel client update request
//
// swagger:model Clientmodel client update request.
type ClientmodelClientUpdateRequest struct {

	// clientname
	// Required: true
	ClientName *string `json:"ClientName"`

	// redirecturi
	// Required: true
	RedirectURI *string `json:"RedirectUri"`

	// twofactorenabled
	// Required: true
	TwoFactorEnabled *bool `json:"TwoFactorEnabled"`
}

// Validate validates this Clientmodel client update request
func (m *ClientmodelClientUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedirectURI(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTwoFactorEnabled(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelClientUpdateRequest) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("ClientName", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientUpdateRequest) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("RedirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientUpdateRequest) validateTwoFactorEnabled(formats strfmt.Registry) error {

	if err := validate.Required("TwoFactorEnabled", "body", m.TwoFactorEnabled); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

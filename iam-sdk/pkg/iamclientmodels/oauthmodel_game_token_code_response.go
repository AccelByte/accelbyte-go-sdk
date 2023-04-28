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

// OauthmodelGameTokenCodeResponse Oauthmodel game token code response
//
// swagger:model Oauthmodel game token code response.
type OauthmodelGameTokenCodeResponse struct {

	// code
	// Required: true
	Code *string `json:"code"`
}

// Validate validates this Oauthmodel game token code response
func (m *OauthmodelGameTokenCodeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelGameTokenCodeResponse) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelGameTokenCodeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelGameTokenCodeResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelGameTokenCodeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// OauthmodelTargetTokenCodeResponse Oauthmodel target token code response
//
// swagger:model Oauthmodel target token code response.
type OauthmodelTargetTokenCodeResponse struct {

	// code
	// Required: true
	Code *string `json:"code"`
}

// Validate validates this Oauthmodel target token code response
func (m *OauthmodelTargetTokenCodeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelTargetTokenCodeResponse) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelTargetTokenCodeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelTargetTokenCodeResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelTargetTokenCodeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

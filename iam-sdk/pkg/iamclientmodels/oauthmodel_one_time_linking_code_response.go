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

// OauthmodelOneTimeLinkingCodeResponse Oauthmodel one time linking code response
//
// swagger:model Oauthmodel one time linking code response.
type OauthmodelOneTimeLinkingCodeResponse struct {

	// code will be expired in seconds
	// Required: true
	// Format: int64
	Exp *int64 `json:"exp"`

	// onetimelinkcode
	// Required: true
	OneTimeLinkCode *string `json:"oneTimeLinkCode"`

	// onetimelinkurl
	// Required: true
	OneTimeLinkURL *string `json:"oneTimeLinkUrl"`
}

// Validate validates this Oauthmodel one time linking code response
func (m *OauthmodelOneTimeLinkingCodeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOneTimeLinkCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOneTimeLinkURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelOneTimeLinkingCodeResponse) validateExp(formats strfmt.Registry) error {

	if err := validate.Required("exp", "body", m.Exp); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelOneTimeLinkingCodeResponse) validateOneTimeLinkCode(formats strfmt.Registry) error {

	if err := validate.Required("oneTimeLinkCode", "body", m.OneTimeLinkCode); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelOneTimeLinkingCodeResponse) validateOneTimeLinkURL(formats strfmt.Registry) error {

	if err := validate.Required("oneTimeLinkUrl", "body", m.OneTimeLinkURL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelOneTimeLinkingCodeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelOneTimeLinkingCodeResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelOneTimeLinkingCodeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

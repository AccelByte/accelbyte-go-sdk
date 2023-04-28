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

// OauthmodelOneTimeLinkingCodeValidationResponse Oauthmodel one time linking code validation response
//
// swagger:model Oauthmodel one time linking code validation response.
type OauthmodelOneTimeLinkingCodeValidationResponse struct {

	// expired
	// Required: true
	Expired *bool `json:"expired"`

	// valid
	// Required: true
	Valid *bool `json:"valid"`
}

// Validate validates this Oauthmodel one time linking code validation response
func (m *OauthmodelOneTimeLinkingCodeValidationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExpired(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValid(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelOneTimeLinkingCodeValidationResponse) validateExpired(formats strfmt.Registry) error {

	if err := validate.Required("expired", "body", m.Expired); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelOneTimeLinkingCodeValidationResponse) validateValid(formats strfmt.Registry) error {

	if err := validate.Required("valid", "body", m.Valid); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelOneTimeLinkingCodeValidationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelOneTimeLinkingCodeValidationResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelOneTimeLinkingCodeValidationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

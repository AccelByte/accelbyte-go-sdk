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

// ApimodelPublicIAMClientResponse Apimodel public IAM client response
//
// swagger:model Apimodel public IAM client response.
type ApimodelPublicIAMClientResponse struct {

	// clientid
	// Required: true
	ClientID *string `json:"clientId"`

	// clientname
	// Required: true
	ClientName *string `json:"clientName"`

	// redirecturilist
	// Required: true
	RedirectURIList []string `json:"redirectUriList"`
}

// Validate validates this Apimodel public IAM client response
func (m *ApimodelPublicIAMClientResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedirectURIList(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelPublicIAMClientResponse) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("clientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelPublicIAMClientResponse) validateClientName(formats strfmt.Registry) error {

	if err := validate.Required("clientName", "body", m.ClientName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelPublicIAMClientResponse) validateRedirectURIList(formats strfmt.Registry) error {

	if err := validate.Required("redirectUriList", "body", m.RedirectURIList); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelPublicIAMClientResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelPublicIAMClientResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelPublicIAMClientResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

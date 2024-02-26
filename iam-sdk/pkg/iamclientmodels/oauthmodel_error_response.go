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

// OauthmodelErrorResponse Oauthmodel error response
//
// swagger:model Oauthmodel error response.
type OauthmodelErrorResponse struct {

	// clientid
	ClientID string `json:"clientId,omitempty"`

	// default_factor
	DefaultFactor string `json:"default_factor,omitempty"`

	// email
	Email string `json:"email,omitempty"`

	// error
	// Required: true
	Error *string `json:"error"`

	// error_description
	ErrorDescription string `json:"error_description,omitempty"`

	// error_uri
	ErrorURI string `json:"error_uri,omitempty"`

	// factors
	Factors []string `json:"factors,omitempty"`

	// linkingtoken
	LinkingToken string `json:"linkingToken,omitempty"`

	// login_queue_ticket
	LoginQueueTicket *OauthmodelLoginQueueTicketResponse `json:"login_queue_ticket,omitempty"`

	// messagevariables
	MessageVariables map[string]string `json:"messageVariables,omitempty"`

	// mfa_token
	MFAToken string `json:"mfa_token,omitempty"`

	// platformid
	PlatformID string `json:"platformId,omitempty"`

	// userban
	UserBan *OauthmodelUserBan `json:"userBan,omitempty"`
}

// Validate validates this Oauthmodel error response
func (m *OauthmodelErrorResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateError(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelErrorResponse) validateError(formats strfmt.Registry) error {

	if err := validate.Required("error", "body", m.Error); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelErrorResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelErrorResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelErrorResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

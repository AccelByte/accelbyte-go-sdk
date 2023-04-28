// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAdminVerifyMessageProfanityRequest Models admin verify message profanity request
//
// swagger:model Models admin verify message profanity request.
type ModelsAdminVerifyMessageProfanityRequest struct {

	// message
	// Required: true
	Message *string `json:"message"`

	// profanitylevel
	// Required: true
	ProfanityLevel *string `json:"profanityLevel"`
}

// Validate validates this Models admin verify message profanity request
func (m *ModelsAdminVerifyMessageProfanityRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProfanityLevel(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminVerifyMessageProfanityRequest) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminVerifyMessageProfanityRequest) validateProfanityLevel(formats strfmt.Registry) error {

	if err := validate.Required("profanityLevel", "body", m.ProfanityLevel); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminVerifyMessageProfanityRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminVerifyMessageProfanityRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminVerifyMessageProfanityRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

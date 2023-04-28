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

// ModelsAdminVerifyMessageProfanityResponse Models admin verify message profanity response
//
// swagger:model Models admin verify message profanity response.
type ModelsAdminVerifyMessageProfanityResponse struct {

	// filteredmessage
	// Required: true
	FilteredMessage *string `json:"filteredMessage"`

	// hasprofanity
	// Required: true
	HasProfanity *bool `json:"hasProfanity"`
}

// Validate validates this Models admin verify message profanity response
func (m *ModelsAdminVerifyMessageProfanityResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFilteredMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHasProfanity(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminVerifyMessageProfanityResponse) validateFilteredMessage(formats strfmt.Registry) error {

	if err := validate.Required("filteredMessage", "body", m.FilteredMessage); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminVerifyMessageProfanityResponse) validateHasProfanity(formats strfmt.Registry) error {

	if err := validate.Required("hasProfanity", "body", m.HasProfanity); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminVerifyMessageProfanityResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminVerifyMessageProfanityResponse) UnmarshalBinary(b []byte) error {
	var res ModelsAdminVerifyMessageProfanityResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

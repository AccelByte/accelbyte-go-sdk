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

// ModelsDebugProfanityFilterRequest Models debug profanity filter request
//
// swagger:model Models debug profanity filter request.
type ModelsDebugProfanityFilterRequest struct {

	// text
	// Required: true
	Text *string `json:"text"`
}

// Validate validates this Models debug profanity filter request
func (m *ModelsDebugProfanityFilterRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateText(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDebugProfanityFilterRequest) validateText(formats strfmt.Registry) error {

	if err := validate.Required("text", "body", m.Text); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDebugProfanityFilterRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDebugProfanityFilterRequest) UnmarshalBinary(b []byte) error {
	var res ModelsDebugProfanityFilterRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

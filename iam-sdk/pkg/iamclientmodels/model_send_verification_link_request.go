// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelSendVerificationLinkRequest Model send verification link request
//
// swagger:model Model send verification link request.
type ModelSendVerificationLinkRequest struct {

	// languagetag
	LanguageTag string `json:"languageTag,omitempty"`
}

// Validate validates this Model send verification link request
func (m *ModelSendVerificationLinkRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelSendVerificationLinkRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelSendVerificationLinkRequest) UnmarshalBinary(b []byte) error {
	var res ModelSendVerificationLinkRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

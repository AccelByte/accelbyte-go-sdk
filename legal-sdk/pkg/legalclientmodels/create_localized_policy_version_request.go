// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CreateLocalizedPolicyVersionRequest Create localized policy version request
//
// swagger:model Create localized policy version request.
type CreateLocalizedPolicyVersionRequest struct {

	// contenttype
	ContentType string `json:"contentType,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// localecode
	LocaleCode string `json:"localeCode,omitempty"`
}

// Validate validates this Create localized policy version request
func (m *CreateLocalizedPolicyVersionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreateLocalizedPolicyVersionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreateLocalizedPolicyVersionRequest) UnmarshalBinary(b []byte) error {
	var res CreateLocalizedPolicyVersionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

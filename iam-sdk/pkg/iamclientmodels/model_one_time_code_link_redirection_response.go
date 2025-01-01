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

// ModelOneTimeCodeLinkRedirectionResponse Model one time code link redirection response
//
// swagger:model Model one time code link redirection response.
type ModelOneTimeCodeLinkRedirectionResponse struct {

	// redirecturi
	// Required: true
	RedirectURI *string `json:"redirectUri"`
}

// Validate validates this Model one time code link redirection response
func (m *ModelOneTimeCodeLinkRedirectionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRedirectURI(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelOneTimeCodeLinkRedirectionResponse) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("redirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelOneTimeCodeLinkRedirectionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelOneTimeCodeLinkRedirectionResponse) UnmarshalBinary(b []byte) error {
	var res ModelOneTimeCodeLinkRedirectionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

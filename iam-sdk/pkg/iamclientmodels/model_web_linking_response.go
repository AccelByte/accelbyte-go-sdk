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

// ModelWebLinkingResponse Model web linking response
//
// swagger:model Model web linking response.
type ModelWebLinkingResponse struct {

	// third_party_url
	// Required: true
	ThirdPartyURL *string `json:"third_party_url"`
}

// Validate validates this Model web linking response
func (m *ModelWebLinkingResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateThirdPartyURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelWebLinkingResponse) validateThirdPartyURL(formats strfmt.Registry) error {

	if err := validate.Required("third_party_url", "body", m.ThirdPartyURL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelWebLinkingResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelWebLinkingResponse) UnmarshalBinary(b []byte) error {
	var res ModelWebLinkingResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

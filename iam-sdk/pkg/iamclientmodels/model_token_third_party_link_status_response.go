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

// ModelTokenThirdPartyLinkStatusResponse Model token third party link status response
//
// swagger:model Model token third party link status response.
type ModelTokenThirdPartyLinkStatusResponse struct {

	// linked
	// Required: true
	Linked *bool `json:"linked"`
}

// Validate validates this Model token third party link status response
func (m *ModelTokenThirdPartyLinkStatusResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLinked(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelTokenThirdPartyLinkStatusResponse) validateLinked(formats strfmt.Registry) error {

	if err := validate.Required("linked", "body", m.Linked); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelTokenThirdPartyLinkStatusResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelTokenThirdPartyLinkStatusResponse) UnmarshalBinary(b []byte) error {
	var res ModelTokenThirdPartyLinkStatusResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

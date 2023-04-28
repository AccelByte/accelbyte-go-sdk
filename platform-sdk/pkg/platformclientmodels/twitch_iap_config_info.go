// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// TwitchIAPConfigInfo Twitch IAP config info
//
// swagger:model Twitch IAP config info.
type TwitchIAPConfigInfo struct {

	// twitch client id
	ClientID string `json:"clientId,omitempty"`

	// twitch client secret
	ClientSecret string `json:"clientSecret,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// twitch organization Id
	OrganizationID string `json:"organizationId,omitempty"`
}

// Validate validates this Twitch IAP config info
func (m *TwitchIAPConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TwitchIAPConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TwitchIAPConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TwitchIAPConfigInfo) UnmarshalBinary(b []byte) error {
	var res TwitchIAPConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

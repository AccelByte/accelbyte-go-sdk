// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// TwitchIAPConfigRequest Twitch IAP config request
//
// swagger:model Twitch IAP config request.
type TwitchIAPConfigRequest struct {

	// twitch client id
	ClientID string `json:"clientId,omitempty"`

	// twitch client secret
	ClientSecret string `json:"clientSecret,omitempty"`

	// twitch organization Id
	OrganizationID string `json:"organizationId,omitempty"`
}

// Validate validates this Twitch IAP config request
func (m *TwitchIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TwitchIAPConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TwitchIAPConfigRequest) UnmarshalBinary(b []byte) error {
	var res TwitchIAPConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

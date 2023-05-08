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

// SteamIAPConfigRequest Steam IAP config request
//
// swagger:model Steam IAP config request.
type SteamIAPConfigRequest struct {

	// appId
	// Required: true
	AppID *string `json:"appId"`

	// publisherAuthenticationKey
	PublisherAuthenticationKey string `json:"publisherAuthenticationKey,omitempty"`
}

// Validate validates this Steam IAP config request
func (m *SteamIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SteamIAPConfigRequest) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SteamIAPConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamIAPConfigRequest) UnmarshalBinary(b []byte) error {
	var res SteamIAPConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

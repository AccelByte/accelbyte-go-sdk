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

// SteamIAPConfigInfo Steam IAP config info
//
// swagger:model Steam IAP config info.
type SteamIAPConfigInfo struct {

	// steam app id
	AppID string `json:"appId,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// steam publisher authentication key
	// Required: true
	PublisherAuthenticationKey *string `json:"publisherAuthenticationKey"`
}

// Validate validates this Steam IAP config info
func (m *SteamIAPConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePublisherAuthenticationKey(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SteamIAPConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *SteamIAPConfigInfo) validatePublisherAuthenticationKey(formats strfmt.Registry) error {

	if err := validate.Required("publisherAuthenticationKey", "body", m.PublisherAuthenticationKey); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SteamIAPConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamIAPConfigInfo) UnmarshalBinary(b []byte) error {
	var res SteamIAPConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

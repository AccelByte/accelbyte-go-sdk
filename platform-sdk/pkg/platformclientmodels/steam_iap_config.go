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

// SteamIAPConfig Steam IAP config
//
// swagger:model Steam IAP config.
type SteamIAPConfig struct {

	// appid
	AppID string `json:"appId,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// publisherauthenticationkey
	PublisherAuthenticationKey string `json:"publisherAuthenticationKey,omitempty"`

	// rvn
	// Format: int32
	Rvn int32 `json:"rvn,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Steam IAP config
func (m *SteamIAPConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SteamIAPConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamIAPConfig) UnmarshalBinary(b []byte) error {
	var res SteamIAPConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

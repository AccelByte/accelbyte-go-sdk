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

// SteamSyncRequest Steam sync request
//
// swagger:model Steam sync request.
type SteamSyncRequest struct {

	// Steam app id
	// Required: true
	AppID *string `json:"appId"`

	// product price currency
	CurrencyCode string `json:"currencyCode,omitempty"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// product price
	// Format: double
	Price float64 `json:"price,omitempty"`

	// steamdefid
	ProductID string `json:"productId,omitempty"`

	// country value from ISO countries
	Region string `json:"region,omitempty"`

	// Steam ID of the user
	// Required: true
	SteamID *string `json:"steamId"`
}

// Validate validates this Steam sync request
func (m *SteamSyncRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSteamID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SteamSyncRequest) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *SteamSyncRequest) validateLanguage(formats strfmt.Registry) error {

	if swag.IsZero(m.Language) { // not required
		return nil
	}

	if err := validate.Pattern("language", "body", string(m.Language), `^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$`); err != nil {
		return err
	}

	return nil
}

func (m *SteamSyncRequest) validateSteamID(formats strfmt.Registry) error {

	if err := validate.Required("steamId", "body", m.SteamID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SteamSyncRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamSyncRequest) UnmarshalBinary(b []byte) error {
	var res SteamSyncRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

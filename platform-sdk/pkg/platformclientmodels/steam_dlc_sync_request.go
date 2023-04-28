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

// SteamDLCSyncRequest Steam DLC sync request
//
// swagger:model Steam DLC sync request.
type SteamDLCSyncRequest struct {

	// Steam app id, this field is deprecated
	AppID string `json:"appId,omitempty"`

	// Steam ID of the user
	// Required: true
	SteamID *string `json:"steamId"`
}

// Validate validates this Steam DLC sync request
func (m *SteamDLCSyncRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSteamID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SteamDLCSyncRequest) validateSteamID(formats strfmt.Registry) error {

	if err := validate.Required("steamId", "body", m.SteamID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SteamDLCSyncRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamDLCSyncRequest) UnmarshalBinary(b []byte) error {
	var res SteamDLCSyncRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

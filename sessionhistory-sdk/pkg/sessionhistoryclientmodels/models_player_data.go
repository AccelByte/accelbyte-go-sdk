// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsPlayerData Models player data
//
// swagger:model Models player data.
type ModelsPlayerData struct {

	// attributes
	Attributes interface{} `json:"Attributes,omitempty"`

	// partyid
	PartyID string `json:"PartyID,omitempty"`

	// platformid
	PlatformID string `json:"PlatformID,omitempty"`

	// playerid
	PlayerID string `json:"PlayerID,omitempty"`
}

// Validate validates this Models player data
func (m *ModelsPlayerData) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlayerData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlayerData) UnmarshalBinary(b []byte) error {
	var res ModelsPlayerData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

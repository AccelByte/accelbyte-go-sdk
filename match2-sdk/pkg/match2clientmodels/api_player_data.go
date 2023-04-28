// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APIPlayerData Api player data
//
// swagger:model Api player data.
type APIPlayerData struct {

	// attributes
	Attributes interface{} `json:"attributes,omitempty"`

	// partyid
	PartyID string `json:"partyID,omitempty"`

	// playerid
	PlayerID string `json:"playerID,omitempty"`
}

// Validate validates this Api player data
func (m *APIPlayerData) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIPlayerData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIPlayerData) UnmarshalBinary(b []byte) error {
	var res APIPlayerData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

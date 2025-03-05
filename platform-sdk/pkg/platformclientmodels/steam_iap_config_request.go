// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

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

	// steam env, required if sync mode is inventory
	// Enum: ['LIVE', 'SANDBOX']
	Env string `json:"env,omitempty"`

	// publisherAuthenticationKey
	PublisherAuthenticationKey string `json:"publisherAuthenticationKey,omitempty"`

	// steam sync mode, default is INVENTORY
	// Enum: ['INVENTORY', 'TRANSACTION']
	SyncMode string `json:"syncMode,omitempty"`
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

var steamIapConfigRequestTypeEnvPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LIVE", "SANDBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		steamIapConfigRequestTypeEnvPropEnum = append(steamIapConfigRequestTypeEnvPropEnum, v)
	}
}

const (

	// SteamIAPConfigRequestEnvLIVE captures enum value "LIVE"
	SteamIAPConfigRequestEnvLIVE string = "LIVE"

	// SteamIAPConfigRequestEnvSANDBOX captures enum value "SANDBOX"
	SteamIAPConfigRequestEnvSANDBOX string = "SANDBOX"
)

// prop value enum
func (m *SteamIAPConfigRequest) validateEnvEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, steamIapConfigRequestTypeEnvPropEnum, true); err != nil {
		return err
	}
	return nil
}

var steamIapConfigRequestTypeSyncModePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INVENTORY", "TRANSACTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		steamIapConfigRequestTypeSyncModePropEnum = append(steamIapConfigRequestTypeSyncModePropEnum, v)
	}
}

const (

	// SteamIAPConfigRequestSyncModeINVENTORY captures enum value "INVENTORY"
	SteamIAPConfigRequestSyncModeINVENTORY string = "INVENTORY"

	// SteamIAPConfigRequestSyncModeTRANSACTION captures enum value "TRANSACTION"
	SteamIAPConfigRequestSyncModeTRANSACTION string = "TRANSACTION"
)

// prop value enum
func (m *SteamIAPConfigRequest) validateSyncModeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, steamIapConfigRequestTypeSyncModePropEnum, true); err != nil {
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

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

// SteamIAPConfig Steam IAP config
//
// swagger:model Steam IAP config.
type SteamIAPConfig struct {

	// appid
	AppID string `json:"appId,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// env
	// Enum: ['LIVE', 'SANDBOX']
	Env string `json:"env,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// publisherauthenticationkey
	PublisherAuthenticationKey string `json:"publisherAuthenticationKey,omitempty"`

	// rvn
	// Format: int32
	Rvn int32 `json:"rvn,omitempty"`

	// syncmode
	// Enum: ['INVENTORY', 'TRANSACTION']
	SyncMode string `json:"syncMode,omitempty"`

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

var steamIapConfigTypeEnvPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LIVE", "SANDBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		steamIapConfigTypeEnvPropEnum = append(steamIapConfigTypeEnvPropEnum, v)
	}
}

const (

	// SteamIAPConfigEnvLIVE captures enum value "LIVE"
	SteamIAPConfigEnvLIVE string = "LIVE"

	// SteamIAPConfigEnvSANDBOX captures enum value "SANDBOX"
	SteamIAPConfigEnvSANDBOX string = "SANDBOX"
)

// prop value enum
func (m *SteamIAPConfig) validateEnvEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, steamIapConfigTypeEnvPropEnum, true); err != nil {
		return err
	}
	return nil
}

var steamIapConfigTypeSyncModePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INVENTORY", "TRANSACTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		steamIapConfigTypeSyncModePropEnum = append(steamIapConfigTypeSyncModePropEnum, v)
	}
}

const (

	// SteamIAPConfigSyncModeINVENTORY captures enum value "INVENTORY"
	SteamIAPConfigSyncModeINVENTORY string = "INVENTORY"

	// SteamIAPConfigSyncModeTRANSACTION captures enum value "TRANSACTION"
	SteamIAPConfigSyncModeTRANSACTION string = "TRANSACTION"
)

// prop value enum
func (m *SteamIAPConfig) validateSyncModeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, steamIapConfigTypeSyncModePropEnum, true); err != nil {
		return err
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

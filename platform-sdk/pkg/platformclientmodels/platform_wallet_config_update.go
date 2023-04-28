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

// PlatformWalletConfigUpdate Platform wallet config update
//
// swagger:model Platform wallet config update.
type PlatformWalletConfigUpdate struct {

	// allowedbalanceorigins
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	AllowedBalanceOrigins []string `json:"allowedBalanceOrigins,omitempty"`
}

// Validate validates this Platform wallet config update
func (m *PlatformWalletConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var platformWalletConfigUpdateTypeAllowedBalanceOriginsItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		platformWalletConfigUpdateTypeAllowedBalanceOriginsItemsEnum = append(platformWalletConfigUpdateTypeAllowedBalanceOriginsItemsEnum, v)
	}
}

const (

	// PlatformWalletConfigUpdateAllowedBalanceOriginsEPIC captures enum value "EPIC"
	PlatformWalletConfigUpdateAllowedBalanceOriginsEPIC string = "EPIC"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsGOOGLEPLAY captures enum value "GOOGLEPLAY"
	PlatformWalletConfigUpdateAllowedBalanceOriginsGOOGLEPLAY string = "GOOGLEPLAY"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsIOS captures enum value "IOS"
	PlatformWalletConfigUpdateAllowedBalanceOriginsIOS string = "IOS"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsNINTENDO captures enum value "NINTENDO"
	PlatformWalletConfigUpdateAllowedBalanceOriginsNINTENDO string = "NINTENDO"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsOTHER captures enum value "OTHER"
	PlatformWalletConfigUpdateAllowedBalanceOriginsOTHER string = "OTHER"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsPLAYSTATION captures enum value "PLAYSTATION"
	PlatformWalletConfigUpdateAllowedBalanceOriginsPLAYSTATION string = "PLAYSTATION"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsSTEAM captures enum value "STEAM"
	PlatformWalletConfigUpdateAllowedBalanceOriginsSTEAM string = "STEAM"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsSYSTEM captures enum value "SYSTEM"
	PlatformWalletConfigUpdateAllowedBalanceOriginsSYSTEM string = "SYSTEM"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsTWITCH captures enum value "TWITCH"
	PlatformWalletConfigUpdateAllowedBalanceOriginsTWITCH string = "TWITCH"

	// PlatformWalletConfigUpdateAllowedBalanceOriginsXBOX captures enum value "XBOX"
	PlatformWalletConfigUpdateAllowedBalanceOriginsXBOX string = "XBOX"
)

func (m *PlatformWalletConfigUpdate) validateAllowedBalanceOriginsItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, platformWalletConfigUpdateTypeAllowedBalanceOriginsItemsEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlatformWalletConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformWalletConfigUpdate) UnmarshalBinary(b []byte) error {
	var res PlatformWalletConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

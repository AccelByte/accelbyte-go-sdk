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

// XsollaPaywallConfig Xsolla paywall config
//
// swagger:model Xsolla paywall config.
type XsollaPaywallConfig struct {

	// device
	// Enum: ['DESKTOP', 'MOBILE']
	// Required: true
	Device *string `json:"device"`

	// showCloseButton
	// Required: true
	ShowCloseButton *bool `json:"showCloseButton"`

	// size
	// Enum: ['LARGE', 'MEDIUM', 'SMALL']
	// Required: true
	Size *string `json:"size"`

	// theme
	// Enum: ['DARK', 'DEFAULT', 'DEFAULT_DARK']
	// Required: true
	Theme *string `json:"theme"`
}

// Validate validates this Xsolla paywall config
func (m *XsollaPaywallConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDevice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShowCloseButton(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTheme(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var xsollaPaywallConfigTypeDevicePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DESKTOP", "MOBILE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		xsollaPaywallConfigTypeDevicePropEnum = append(xsollaPaywallConfigTypeDevicePropEnum, v)
	}
}

const (

	// XsollaPaywallConfigDeviceDESKTOP captures enum value "DESKTOP"
	XsollaPaywallConfigDeviceDESKTOP string = "DESKTOP"

	// XsollaPaywallConfigDeviceMOBILE captures enum value "MOBILE"
	XsollaPaywallConfigDeviceMOBILE string = "MOBILE"
)

// prop value enum
func (m *XsollaPaywallConfig) validateDeviceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, xsollaPaywallConfigTypeDevicePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *XsollaPaywallConfig) validateDevice(formats strfmt.Registry) error {

	if err := validate.Required("device", "body", m.Device); err != nil {
		return err
	}

	// value enum
	if err := m.validateDeviceEnum("device", "body", *m.Device); err != nil {
		return err
	}

	return nil
}

func (m *XsollaPaywallConfig) validateShowCloseButton(formats strfmt.Registry) error {

	if err := validate.Required("showCloseButton", "body", m.ShowCloseButton); err != nil {
		return err
	}

	return nil
}

var xsollaPaywallConfigTypeSizePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LARGE", "MEDIUM", "SMALL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		xsollaPaywallConfigTypeSizePropEnum = append(xsollaPaywallConfigTypeSizePropEnum, v)
	}
}

const (

	// XsollaPaywallConfigSizeLARGE captures enum value "LARGE"
	XsollaPaywallConfigSizeLARGE string = "LARGE"

	// XsollaPaywallConfigSizeMEDIUM captures enum value "MEDIUM"
	XsollaPaywallConfigSizeMEDIUM string = "MEDIUM"

	// XsollaPaywallConfigSizeSMALL captures enum value "SMALL"
	XsollaPaywallConfigSizeSMALL string = "SMALL"
)

// prop value enum
func (m *XsollaPaywallConfig) validateSizeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, xsollaPaywallConfigTypeSizePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *XsollaPaywallConfig) validateSize(formats strfmt.Registry) error {

	if err := validate.Required("size", "body", m.Size); err != nil {
		return err
	}

	// value enum
	if err := m.validateSizeEnum("size", "body", *m.Size); err != nil {
		return err
	}

	return nil
}

var xsollaPaywallConfigTypeThemePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DARK", "DEFAULT", "DEFAULT_DARK"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		xsollaPaywallConfigTypeThemePropEnum = append(xsollaPaywallConfigTypeThemePropEnum, v)
	}
}

const (

	// XsollaPaywallConfigThemeDARK captures enum value "DARK"
	XsollaPaywallConfigThemeDARK string = "DARK"

	// XsollaPaywallConfigThemeDEFAULT captures enum value "DEFAULT"
	XsollaPaywallConfigThemeDEFAULT string = "DEFAULT"

	// XsollaPaywallConfigThemeDEFAULTDARK captures enum value "DEFAULT_DARK"
	XsollaPaywallConfigThemeDEFAULTDARK string = "DEFAULT_DARK"
)

// prop value enum
func (m *XsollaPaywallConfig) validateThemeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, xsollaPaywallConfigTypeThemePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *XsollaPaywallConfig) validateTheme(formats strfmt.Registry) error {

	if err := validate.Required("theme", "body", m.Theme); err != nil {
		return err
	}

	// value enum
	if err := m.validateThemeEnum("theme", "body", *m.Theme); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *XsollaPaywallConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XsollaPaywallConfig) UnmarshalBinary(b []byte) error {
	var res XsollaPaywallConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

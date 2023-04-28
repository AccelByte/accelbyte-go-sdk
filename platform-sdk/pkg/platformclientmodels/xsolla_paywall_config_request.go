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

// XsollaPaywallConfigRequest Xsolla paywall config request
//
// swagger:model Xsolla paywall config request.
type XsollaPaywallConfigRequest struct {

	// Payment UI device type, DESKTOP for default
	// Enum: ['DESKTOP', 'MOBILE']
	Device string `json:"device,omitempty"`

	// Whether to show a Close button in pay station. false by default
	ShowCloseButton bool `json:"showCloseButton"`

	// Payment UI size, MEDIUM for default.
	// Enum: ['LARGE', 'MEDIUM', 'SMALL']
	Size string `json:"size,omitempty"`

	// Payment UI theme, DEFAULT for default.
	// Enum: ['DARK', 'DEFAULT', 'DEFAULT_DARK']
	Theme string `json:"theme,omitempty"`
}

// Validate validates this Xsolla paywall config request
func (m *XsollaPaywallConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var xsollaPaywallConfigRequestTypeDevicePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DESKTOP", "MOBILE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		xsollaPaywallConfigRequestTypeDevicePropEnum = append(xsollaPaywallConfigRequestTypeDevicePropEnum, v)
	}
}

const (

	// XsollaPaywallConfigRequestDeviceDESKTOP captures enum value "DESKTOP"
	XsollaPaywallConfigRequestDeviceDESKTOP string = "DESKTOP"

	// XsollaPaywallConfigRequestDeviceMOBILE captures enum value "MOBILE"
	XsollaPaywallConfigRequestDeviceMOBILE string = "MOBILE"
)

// prop value enum
func (m *XsollaPaywallConfigRequest) validateDeviceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, xsollaPaywallConfigRequestTypeDevicePropEnum, true); err != nil {
		return err
	}
	return nil
}

var xsollaPaywallConfigRequestTypeSizePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LARGE", "MEDIUM", "SMALL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		xsollaPaywallConfigRequestTypeSizePropEnum = append(xsollaPaywallConfigRequestTypeSizePropEnum, v)
	}
}

const (

	// XsollaPaywallConfigRequestSizeLARGE captures enum value "LARGE"
	XsollaPaywallConfigRequestSizeLARGE string = "LARGE"

	// XsollaPaywallConfigRequestSizeMEDIUM captures enum value "MEDIUM"
	XsollaPaywallConfigRequestSizeMEDIUM string = "MEDIUM"

	// XsollaPaywallConfigRequestSizeSMALL captures enum value "SMALL"
	XsollaPaywallConfigRequestSizeSMALL string = "SMALL"
)

// prop value enum
func (m *XsollaPaywallConfigRequest) validateSizeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, xsollaPaywallConfigRequestTypeSizePropEnum, true); err != nil {
		return err
	}
	return nil
}

var xsollaPaywallConfigRequestTypeThemePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DARK", "DEFAULT", "DEFAULT_DARK"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		xsollaPaywallConfigRequestTypeThemePropEnum = append(xsollaPaywallConfigRequestTypeThemePropEnum, v)
	}
}

const (

	// XsollaPaywallConfigRequestThemeDARK captures enum value "DARK"
	XsollaPaywallConfigRequestThemeDARK string = "DARK"

	// XsollaPaywallConfigRequestThemeDEFAULT captures enum value "DEFAULT"
	XsollaPaywallConfigRequestThemeDEFAULT string = "DEFAULT"

	// XsollaPaywallConfigRequestThemeDEFAULTDARK captures enum value "DEFAULT_DARK"
	XsollaPaywallConfigRequestThemeDEFAULTDARK string = "DEFAULT_DARK"
)

// prop value enum
func (m *XsollaPaywallConfigRequest) validateThemeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, xsollaPaywallConfigRequestTypeThemePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XsollaPaywallConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XsollaPaywallConfigRequest) UnmarshalBinary(b []byte) error {
	var res XsollaPaywallConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

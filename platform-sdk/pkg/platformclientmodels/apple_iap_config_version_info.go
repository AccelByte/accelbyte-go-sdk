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

// AppleIAPConfigVersionInfo Apple IAP config version info
//
// swagger:model Apple IAP config version info.
type AppleIAPConfigVersionInfo struct {

	// Apple in app purchase version. v1 don't support subscription.
	// Enum: ['V1', 'V2']
	Version string `json:"version,omitempty"`
}

// Validate validates this Apple IAP config version info
func (m *AppleIAPConfigVersionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var appleIapConfigVersionInfoTypeVersionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["V1", "V2"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appleIapConfigVersionInfoTypeVersionPropEnum = append(appleIapConfigVersionInfoTypeVersionPropEnum, v)
	}
}

const (

	// AppleIAPConfigVersionInfoVersionV1 captures enum value "V1"
	AppleIAPConfigVersionInfoVersionV1 string = "V1"

	// AppleIAPConfigVersionInfoVersionV2 captures enum value "V2"
	AppleIAPConfigVersionInfoVersionV2 string = "V2"
)

// prop value enum
func (m *AppleIAPConfigVersionInfo) validateVersionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appleIapConfigVersionInfoTypeVersionPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AppleIAPConfigVersionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppleIAPConfigVersionInfo) UnmarshalBinary(b []byte) error {
	var res AppleIAPConfigVersionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

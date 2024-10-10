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

// AppleIAPConfigInfo Apple IAP config info
//
// swagger:model Apple IAP config info.
type AppleIAPConfigInfo struct {

	// Apple App Id
	// Format: int64
	AppAppleID int64 `json:"appAppleId,omitempty"`

	// auth key file name
	AuthKeyFileName string `json:"authKeyFileName,omitempty"`

	// bundleId
	BundleID string `json:"bundleId,omitempty"`

	// Apple issuer id
	IssuerID string `json:"issuerId,omitempty"`

	// Apple key id
	KeyID string `json:"keyId,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// password
	Password string `json:"password,omitempty"`

	// Apple in app purchase version. v1 don't support subscription.
	// Enum: ['V1', 'V2']
	Version string `json:"version,omitempty"`
}

// Validate validates this Apple IAP config info
func (m *AppleIAPConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AppleIAPConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var appleIapConfigInfoTypeVersionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["V1", "V2"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appleIapConfigInfoTypeVersionPropEnum = append(appleIapConfigInfoTypeVersionPropEnum, v)
	}
}

const (

	// AppleIAPConfigInfoVersionV1 captures enum value "V1"
	AppleIAPConfigInfoVersionV1 string = "V1"

	// AppleIAPConfigInfoVersionV2 captures enum value "V2"
	AppleIAPConfigInfoVersionV2 string = "V2"
)

// prop value enum
func (m *AppleIAPConfigInfo) validateVersionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appleIapConfigInfoTypeVersionPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AppleIAPConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppleIAPConfigInfo) UnmarshalBinary(b []byte) error {
	var res AppleIAPConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

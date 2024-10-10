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

// AppleIAPConfigRequest Apple IAP config request
//
// swagger:model Apple IAP config request.
type AppleIAPConfigRequest struct {

	// app apple id
	// Format: int64
	AppAppleID int64 `json:"appAppleId,omitempty"`

	// bundleId
	// Required: true
	BundleID *string `json:"bundleId"`

	// issuerId
	IssuerID string `json:"issuerId,omitempty"`

	// keyId
	KeyID string `json:"keyId,omitempty"`

	// password
	Password string `json:"password,omitempty"`

	// version
	// Enum: ['V1', 'V2']
	Version string `json:"version,omitempty"`
}

// Validate validates this Apple IAP config request
func (m *AppleIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBundleID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AppleIAPConfigRequest) validateBundleID(formats strfmt.Registry) error {

	if err := validate.Required("bundleId", "body", m.BundleID); err != nil {
		return err
	}

	return nil
}

var appleIapConfigRequestTypeVersionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["V1", "V2"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appleIapConfigRequestTypeVersionPropEnum = append(appleIapConfigRequestTypeVersionPropEnum, v)
	}
}

const (

	// AppleIAPConfigRequestVersionV1 captures enum value "V1"
	AppleIAPConfigRequestVersionV1 string = "V1"

	// AppleIAPConfigRequestVersionV2 captures enum value "V2"
	AppleIAPConfigRequestVersionV2 string = "V2"
)

// prop value enum
func (m *AppleIAPConfigRequest) validateVersionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appleIapConfigRequestTypeVersionPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AppleIAPConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppleIAPConfigRequest) UnmarshalBinary(b []byte) error {
	var res AppleIAPConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

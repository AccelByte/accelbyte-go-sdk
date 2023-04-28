// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AppleIAPConfigInfo Apple IAP config info
//
// swagger:model Apple IAP config info.
type AppleIAPConfigInfo struct {

	// bundleId
	BundleID string `json:"bundleId,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// password
	Password string `json:"password,omitempty"`
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

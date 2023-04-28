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

// AppleIAPConfigRequest Apple IAP config request
//
// swagger:model Apple IAP config request.
type AppleIAPConfigRequest struct {

	// bundleId
	// Required: true
	BundleID *string `json:"bundleId"`

	// password
	Password string `json:"password,omitempty"`
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

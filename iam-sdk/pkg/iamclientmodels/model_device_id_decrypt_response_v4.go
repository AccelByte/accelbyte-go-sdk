// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelDeviceIDDecryptResponseV4 Model device ID decrypt response V4
//
// swagger:model Model device ID decrypt response V4.
type ModelDeviceIDDecryptResponseV4 struct {

	// deviceid
	// Required: true
	DeviceID *string `json:"deviceId"`
}

// Validate validates this Model device ID decrypt response V4
func (m *ModelDeviceIDDecryptResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeviceID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelDeviceIDDecryptResponseV4) validateDeviceID(formats strfmt.Registry) error {

	if err := validate.Required("deviceId", "body", m.DeviceID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelDeviceIDDecryptResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelDeviceIDDecryptResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelDeviceIDDecryptResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

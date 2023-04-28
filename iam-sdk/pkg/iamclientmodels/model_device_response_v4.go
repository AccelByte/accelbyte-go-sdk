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

// ModelDeviceResponseV4 Model device response V4
//
// swagger:model Model device response V4.
type ModelDeviceResponseV4 struct {

	// ban
	Ban *ModelDeviceBanResponseV4 `json:"ban,omitempty"`

	// deviceid
	// Required: true
	DeviceID *string `json:"deviceId"`

	// devicetype
	// Required: true
	DeviceType *string `json:"deviceType"`

	// ext
	Ext interface{} `json:"ext,omitempty"`

	// ip
	// Required: true
	IP *string `json:"ip"`

	// lastlogintime
	// Required: true
	// Format: int64
	LastLoginTime *int64 `json:"lastLoginTime"`
}

// Validate validates this Model device response V4
func (m *ModelDeviceResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeviceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeviceType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIP(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastLoginTime(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelDeviceResponseV4) validateDeviceID(formats strfmt.Registry) error {

	if err := validate.Required("deviceId", "body", m.DeviceID); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceResponseV4) validateDeviceType(formats strfmt.Registry) error {

	if err := validate.Required("deviceType", "body", m.DeviceType); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceResponseV4) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceResponseV4) validateLastLoginTime(formats strfmt.Registry) error {

	if err := validate.Required("lastLoginTime", "body", m.LastLoginTime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelDeviceResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelDeviceResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelDeviceResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

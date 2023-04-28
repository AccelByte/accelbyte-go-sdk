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

// ModelDeviceUserResponseV4 Model device user response V4
//
// swagger:model Model device user response V4.
type ModelDeviceUserResponseV4 struct {

	// ext
	Ext interface{} `json:"ext,omitempty"`

	// ip
	// Required: true
	IP *string `json:"ip"`

	// lastlogintime
	// Required: true
	// Format: int64
	LastLoginTime *int64 `json:"lastLoginTime"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model device user response V4
func (m *ModelDeviceUserResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIP(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastLoginTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelDeviceUserResponseV4) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceUserResponseV4) validateLastLoginTime(formats strfmt.Registry) error {

	if err := validate.Required("lastLoginTime", "body", m.LastLoginTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceUserResponseV4) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceUserResponseV4) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelDeviceUserResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelDeviceUserResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelDeviceUserResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

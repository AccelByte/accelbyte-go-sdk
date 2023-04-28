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

// ModelDeviceTypeResponseV4 Model device type response V4
//
// swagger:model Model device type response V4.
type ModelDeviceTypeResponseV4 struct {

	// devicetype
	// Required: true
	DeviceType *string `json:"deviceType"`
}

// Validate validates this Model device type response V4
func (m *ModelDeviceTypeResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeviceType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelDeviceTypeResponseV4) validateDeviceType(formats strfmt.Registry) error {

	if err := validate.Required("deviceType", "body", m.DeviceType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelDeviceTypeResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelDeviceTypeResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelDeviceTypeResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

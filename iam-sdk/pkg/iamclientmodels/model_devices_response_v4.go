// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelDevicesResponseV4 Model devices response V4
//
// swagger:model Model devices response V4.
type ModelDevicesResponseV4 struct {

	// devices
	// Required: true
	Devices []*ModelDeviceResponseV4 `json:"devices"`
}

// Validate validates this Model devices response V4
func (m *ModelDevicesResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDevices(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelDevicesResponseV4) validateDevices(formats strfmt.Registry) error {

	if err := validate.Required("devices", "body", m.Devices); err != nil {
		return err
	}

	for i := 0; i < len(m.Devices); i++ {
		if swag.IsZero(m.Devices[i]) { // not required
			continue
		}

		if m.Devices[i] != nil {
			if err := m.Devices[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("devices" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelDevicesResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelDevicesResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelDevicesResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

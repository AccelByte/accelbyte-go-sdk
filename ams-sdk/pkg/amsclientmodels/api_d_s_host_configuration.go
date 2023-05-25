// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIDSHostConfiguration Api DS host configuration
//
// swagger:model Api DS host configuration.
type APIDSHostConfiguration struct {

	// instanceid
	// Required: true
	InstanceID *string `json:"instanceId"`

	// instancetype
	// Required: true
	InstanceType *string `json:"instanceType"`

	// serverspervm
	// Required: true
	// Format: int32
	ServersPerVM *int32 `json:"serversPerVm"`
}

// Validate validates this Api DS host configuration
func (m *APIDSHostConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInstanceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInstanceType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServersPerVM(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIDSHostConfiguration) validateInstanceID(formats strfmt.Registry) error {

	if err := validate.Required("instanceId", "body", m.InstanceID); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHostConfiguration) validateInstanceType(formats strfmt.Registry) error {

	if err := validate.Required("instanceType", "body", m.InstanceType); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHostConfiguration) validateServersPerVM(formats strfmt.Registry) error {

	if err := validate.Required("serversPerVm", "body", m.ServersPerVM); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIDSHostConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIDSHostConfiguration) UnmarshalBinary(b []byte) error {
	var res APIDSHostConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

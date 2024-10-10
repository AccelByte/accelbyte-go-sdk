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

// APIDSHostConfigurationParameters Api DS host configuration parameters
//
// swagger:model Api DS host configuration parameters.
type APIDSHostConfigurationParameters struct {

	// instanceid
	// Required: true
	InstanceID *string `json:"instanceId"`

	// serverspervm
	// Required: true
	// Format: int32
	ServersPerVM *int32 `json:"serversPerVm"`
}

// Validate validates this Api DS host configuration parameters
func (m *APIDSHostConfigurationParameters) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInstanceID(formats); err != nil {
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

func (m *APIDSHostConfigurationParameters) validateInstanceID(formats strfmt.Registry) error {

	if err := validate.Required("instanceId", "body", m.InstanceID); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHostConfigurationParameters) validateServersPerVM(formats strfmt.Registry) error {

	if err := validate.Required("serversPerVm", "body", m.ServersPerVM); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIDSHostConfigurationParameters) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIDSHostConfigurationParameters) UnmarshalBinary(b []byte) error {
	var res APIDSHostConfigurationParameters
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

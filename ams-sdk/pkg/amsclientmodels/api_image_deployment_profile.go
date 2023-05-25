// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIImageDeploymentProfile Api image deployment profile
//
// swagger:model Api image deployment profile.
type APIImageDeploymentProfile struct {

	// commandline
	// Required: true
	CommandLine *string `json:"commandLine"`

	// imageid
	// Required: true
	ImageID *string `json:"imageId"`

	// portconfigurations
	// Required: true
	PortConfigurations []*APIPortConfiguration `json:"portConfigurations"`

	// timeout
	// Required: true
	Timeout *APITimeout `json:"timeout"`
}

// Validate validates this Api image deployment profile
func (m *APIImageDeploymentProfile) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCommandLine(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePortConfigurations(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimeout(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIImageDeploymentProfile) validateCommandLine(formats strfmt.Registry) error {

	if err := validate.Required("commandLine", "body", m.CommandLine); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDeploymentProfile) validateImageID(formats strfmt.Registry) error {

	if err := validate.Required("imageId", "body", m.ImageID); err != nil {
		return err
	}

	return nil
}

func (m *APIImageDeploymentProfile) validatePortConfigurations(formats strfmt.Registry) error {

	if err := validate.Required("portConfigurations", "body", m.PortConfigurations); err != nil {
		return err
	}

	for i := 0; i < len(m.PortConfigurations); i++ {
		if swag.IsZero(m.PortConfigurations[i]) { // not required
			continue
		}

		if m.PortConfigurations[i] != nil {
			if err := m.PortConfigurations[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("portConfigurations" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *APIImageDeploymentProfile) validateTimeout(formats strfmt.Registry) error {

	if err := validate.Required("timeout", "body", m.Timeout); err != nil {
		return err
	}

	if m.Timeout != nil {
		if err := m.Timeout.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("timeout")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIImageDeploymentProfile) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIImageDeploymentProfile) UnmarshalBinary(b []byte) error {
	var res APIImageDeploymentProfile
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

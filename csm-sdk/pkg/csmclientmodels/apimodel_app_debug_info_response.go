// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelAppDebugInfoResponse Apimodel app debug info response
//
// swagger:model Apimodel app debug info response.
type ApimodelAppDebugInfoResponse struct {

	// allowedinterceptedports
	// Required: true
	AllowedInterceptedPorts []*DomainAllowedInterceptedPort `json:"allowedInterceptedPorts"`

	// appstatus
	// Required: true
	AppStatus *string `json:"appStatus"`

	// debugpods
	// Required: true
	DebugPods []*DomainDebugPod `json:"debugPods"`

	// exposedservices
	// Required: true
	ExposedServices []*DomainExposedService `json:"exposedServices"`

	// isdebugmodeenabled
	// Required: true
	IsDebugModeEnabled *bool `json:"isDebugModeEnabled"`

	// isdebugsessionconnected
	// Required: true
	IsDebugSessionConnected *bool `json:"isDebugSessionConnected"`
}

// Validate validates this Apimodel app debug info response
func (m *ApimodelAppDebugInfoResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowedInterceptedPorts(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDebugPods(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExposedServices(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsDebugModeEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsDebugSessionConnected(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelAppDebugInfoResponse) validateAllowedInterceptedPorts(formats strfmt.Registry) error {

	if err := validate.Required("allowedInterceptedPorts", "body", m.AllowedInterceptedPorts); err != nil {
		return err
	}

	for i := 0; i < len(m.AllowedInterceptedPorts); i++ {
		if swag.IsZero(m.AllowedInterceptedPorts[i]) { // not required
			continue
		}

		if m.AllowedInterceptedPorts[i] != nil {
			if err := m.AllowedInterceptedPorts[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("allowedInterceptedPorts" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelAppDebugInfoResponse) validateAppStatus(formats strfmt.Registry) error {

	if err := validate.Required("appStatus", "body", m.AppStatus); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppDebugInfoResponse) validateDebugPods(formats strfmt.Registry) error {

	if err := validate.Required("debugPods", "body", m.DebugPods); err != nil {
		return err
	}

	for i := 0; i < len(m.DebugPods); i++ {
		if swag.IsZero(m.DebugPods[i]) { // not required
			continue
		}

		if m.DebugPods[i] != nil {
			if err := m.DebugPods[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("debugPods" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelAppDebugInfoResponse) validateExposedServices(formats strfmt.Registry) error {

	if err := validate.Required("exposedServices", "body", m.ExposedServices); err != nil {
		return err
	}

	for i := 0; i < len(m.ExposedServices); i++ {
		if swag.IsZero(m.ExposedServices[i]) { // not required
			continue
		}

		if m.ExposedServices[i] != nil {
			if err := m.ExposedServices[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("exposedServices" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelAppDebugInfoResponse) validateIsDebugModeEnabled(formats strfmt.Registry) error {

	if err := validate.Required("isDebugModeEnabled", "body", m.IsDebugModeEnabled); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppDebugInfoResponse) validateIsDebugSessionConnected(formats strfmt.Registry) error {

	if err := validate.Required("isDebugSessionConnected", "body", m.IsDebugSessionConnected); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelAppDebugInfoResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelAppDebugInfoResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelAppDebugInfoResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// APIDSHistoryEvent Api DS history event
//
// swagger:model Api DS history event.
type APIDSHistoryEvent struct {

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// exitcode
	// Required: true
	// Format: int32
	ExitCode *int32 `json:"exitCode"`

	// ipaddress
	// Required: true
	IPAddress *string `json:"ipAddress"`

	// reason
	// Required: true
	Reason *string `json:"reason"`

	// region
	// Required: true
	Region *string `json:"region"`

	// serverid
	// Required: true
	ServerID *string `json:"serverId"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Api DS history event
func (m *APIDSHistoryEvent) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExitCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIPAddress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServerID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIDSHistoryEvent) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHistoryEvent) validateExitCode(formats strfmt.Registry) error {

	if err := validate.Required("exitCode", "body", m.ExitCode); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHistoryEvent) validateIPAddress(formats strfmt.Registry) error {

	if err := validate.Required("ipAddress", "body", m.IPAddress); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHistoryEvent) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHistoryEvent) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHistoryEvent) validateServerID(formats strfmt.Registry) error {

	if err := validate.Required("serverId", "body", m.ServerID); err != nil {
		return err
	}

	return nil
}

func (m *APIDSHistoryEvent) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIDSHistoryEvent) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIDSHistoryEvent) UnmarshalBinary(b []byte) error {
	var res APIDSHistoryEvent
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

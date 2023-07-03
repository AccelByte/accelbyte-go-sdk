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

// APIFleetServerHistoryEventResponse Api fleet server history event response
//
// swagger:model Api fleet server history event response.
type APIFleetServerHistoryEventResponse struct {

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// exitcode
	// Required: true
	// Format: int32
	ExitCode *int32 `json:"exitCode"`

	// fleetid
	// Required: true
	FleetID *string `json:"fleetId"`

	// newstate
	// Required: true
	NewState *string `json:"newState"`

	// oldstate
	// Required: true
	OldState *string `json:"oldState"`

	// reason
	// Required: true
	Reason *string `json:"reason"`

	// serverid
	// Required: true
	ServerID *string `json:"serverId"`
}

// Validate validates this Api fleet server history event response
func (m *APIFleetServerHistoryEventResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExitCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFleetID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNewState(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOldState(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServerID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetServerHistoryEventResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerHistoryEventResponse) validateExitCode(formats strfmt.Registry) error {

	if err := validate.Required("exitCode", "body", m.ExitCode); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerHistoryEventResponse) validateFleetID(formats strfmt.Registry) error {

	if err := validate.Required("fleetId", "body", m.FleetID); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerHistoryEventResponse) validateNewState(formats strfmt.Registry) error {

	if err := validate.Required("newState", "body", m.NewState); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerHistoryEventResponse) validateOldState(formats strfmt.Registry) error {

	if err := validate.Required("oldState", "body", m.OldState); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerHistoryEventResponse) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerHistoryEventResponse) validateServerID(formats strfmt.Registry) error {

	if err := validate.Required("serverId", "body", m.ServerID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetServerHistoryEventResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetServerHistoryEventResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetServerHistoryEventResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

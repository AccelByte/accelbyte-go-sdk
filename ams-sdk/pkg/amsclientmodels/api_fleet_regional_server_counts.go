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

// APIFleetRegionalServerCounts Api fleet regional server counts
//
// swagger:model Api fleet regional server counts.
type APIFleetRegionalServerCounts struct {

	// claimedservercount
	// Required: true
	// Format: int32
	ClaimedServerCount *int32 `json:"claimedServerCount"`

	// readyservercount
	// Required: true
	// Format: int32
	ReadyServerCount *int32 `json:"readyServerCount"`

	// region
	// Required: true
	Region *string `json:"region"`

	// runningvmcount
	// Required: true
	// Format: int32
	RunningVMCount *int32 `json:"runningVmCount"`

	// targetdscount
	// Required: true
	// Format: int32
	TargetDsCount *int32 `json:"targetDsCount"`

	// targetvmcount
	// Required: true
	// Format: int32
	TargetVMCount *int32 `json:"targetVmCount"`
}

// Validate validates this Api fleet regional server counts
func (m *APIFleetRegionalServerCounts) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClaimedServerCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReadyServerCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRunningVMCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetDsCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetVMCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetRegionalServerCounts) validateClaimedServerCount(formats strfmt.Registry) error {

	if err := validate.Required("claimedServerCount", "body", m.ClaimedServerCount); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetRegionalServerCounts) validateReadyServerCount(formats strfmt.Registry) error {

	if err := validate.Required("readyServerCount", "body", m.ReadyServerCount); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetRegionalServerCounts) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetRegionalServerCounts) validateRunningVMCount(formats strfmt.Registry) error {

	if err := validate.Required("runningVmCount", "body", m.RunningVMCount); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetRegionalServerCounts) validateTargetDsCount(formats strfmt.Registry) error {

	if err := validate.Required("targetDsCount", "body", m.TargetDsCount); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetRegionalServerCounts) validateTargetVMCount(formats strfmt.Registry) error {

	if err := validate.Required("targetVmCount", "body", m.TargetVMCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetRegionalServerCounts) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetRegionalServerCounts) UnmarshalBinary(b []byte) error {
	var res APIFleetRegionalServerCounts
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

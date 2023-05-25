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

// APIReferencingFleet Api referencing fleet
//
// swagger:model Api referencing fleet.
type APIReferencingFleet struct {

	// environment
	// Required: true
	Environment *string `json:"environment"`

	// fleetid
	// Required: true
	FleetID *string `json:"fleetId"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Api referencing fleet
func (m *APIReferencingFleet) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnvironment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFleetID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIReferencingFleet) validateEnvironment(formats strfmt.Registry) error {

	if err := validate.Required("environment", "body", m.Environment); err != nil {
		return err
	}

	return nil
}

func (m *APIReferencingFleet) validateFleetID(formats strfmt.Registry) error {

	if err := validate.Required("fleetId", "body", m.FleetID); err != nil {
		return err
	}

	return nil
}

func (m *APIReferencingFleet) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIReferencingFleet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIReferencingFleet) UnmarshalBinary(b []byte) error {
	var res APIReferencingFleet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

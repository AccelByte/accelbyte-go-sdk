// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDSInformation Models DS information
//
// swagger:model Models DS information.
type ModelsDSInformation struct {

	// minplayers
	// Required: true
	// Format: int32
	MinPlayers *int32 `json:"MinPlayers"`

	// requestedat
	// Required: true
	RequestedAt *string `json:"RequestedAt"`

	// requestedregions
	// Required: true
	RequestedRegions []string `json:"RequestedRegions"`

	// server
	// Required: true
	Server *ModelsServer `json:"Server"`

	// status
	// Required: true
	Status *string `json:"Status"`
}

// Validate validates this Models DS information
func (m *ModelsDSInformation) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMinPlayers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestedRegions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServer(formats); err != nil {
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

func (m *ModelsDSInformation) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("MinPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSInformation) validateRequestedAt(formats strfmt.Registry) error {

	if err := validate.Required("RequestedAt", "body", m.RequestedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSInformation) validateRequestedRegions(formats strfmt.Registry) error {

	if err := validate.Required("RequestedRegions", "body", m.RequestedRegions); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDSInformation) validateServer(formats strfmt.Registry) error {

	if err := validate.Required("Server", "body", m.Server); err != nil {
		return err
	}

	if m.Server != nil {
		if err := m.Server.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("Server")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsDSInformation) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDSInformation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDSInformation) UnmarshalBinary(b []byte) error {
	var res ModelsDSInformation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

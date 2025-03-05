// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUpdateGamesessionDSInformationRequest Apimodels update gamesession DS information request
//
// swagger:model Apimodels update gamesession DS information request.
type ApimodelsUpdateGamesessionDSInformationRequest struct {

	// createdregion
	// Required: true
	CreatedRegion *string `json:"createdRegion"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// description
	// Required: true
	Description *string `json:"description"`

	// ip
	// Required: true
	IP *string `json:"ip"`

	// port
	// Required: true
	// Format: int32
	Port *int32 `json:"port"`

	// region
	// Required: true
	Region *string `json:"region"`

	// serverid
	// Required: true
	ServerID *string `json:"serverId"`

	// source
	// Required: true
	Source *string `json:"source"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Apimodels update gamesession DS information request
func (m *ApimodelsUpdateGamesessionDSInformationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIP(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePort(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServerID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSource(formats); err != nil {
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

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validateCreatedRegion(formats strfmt.Registry) error {

	if err := validate.Required("createdRegion", "body", m.CreatedRegion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validatePort(formats strfmt.Registry) error {

	if err := validate.Required("port", "body", m.Port); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validateServerID(formats strfmt.Registry) error {

	if err := validate.Required("serverId", "body", m.ServerID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validateSource(formats strfmt.Registry) error {

	if err := validate.Required("source", "body", m.Source); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGamesessionDSInformationRequest) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdateGamesessionDSInformationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateGamesessionDSInformationRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateGamesessionDSInformationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

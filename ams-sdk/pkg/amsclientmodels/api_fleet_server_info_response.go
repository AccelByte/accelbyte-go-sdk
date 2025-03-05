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

// APIFleetServerInfoResponse Api fleet server info response
//
// swagger:model Api fleet server info response.
type APIFleetServerInfoResponse struct {

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// fleetid
	// Required: true
	FleetID *string `json:"fleetId"`

	// fleetname
	// Required: true
	FleetName *string `json:"fleetName"`

	// imagecmd
	// Required: true
	ImageCmd *string `json:"imageCmd"`

	// imageid
	// Required: true
	ImageID *string `json:"imageId"`

	// instancetype
	// Required: true
	InstanceType *string `json:"instanceType"`

	// ipaddress
	// Required: true
	IPAddress *string `json:"ipAddress"`

	// portconfiguration
	// Required: true
	PortConfiguration []*APIPortConfiguration `json:"portConfiguration"`

	// ports
	// Required: true
	Ports map[string]int64 `json:"ports"`

	// region
	// Required: true
	Region *string `json:"region"`

	// serverconfiguration
	// Required: true
	ServerConfiguration *string `json:"serverConfiguration"`

	// serverid
	// Required: true
	ServerID *string `json:"serverId"`

	// sessionid
	// Required: true
	SessionID *string `json:"sessionId"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Api fleet server info response
func (m *APIFleetServerInfoResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFleetID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFleetName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageCmd(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInstanceType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIPAddress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePortConfiguration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServerConfiguration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServerID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
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

func (m *APIFleetServerInfoResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateFleetID(formats strfmt.Registry) error {

	if err := validate.Required("fleetId", "body", m.FleetID); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateFleetName(formats strfmt.Registry) error {

	if err := validate.Required("fleetName", "body", m.FleetName); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateImageCmd(formats strfmt.Registry) error {

	if err := validate.Required("imageCmd", "body", m.ImageCmd); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateImageID(formats strfmt.Registry) error {

	if err := validate.Required("imageId", "body", m.ImageID); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateInstanceType(formats strfmt.Registry) error {

	if err := validate.Required("instanceType", "body", m.InstanceType); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateIPAddress(formats strfmt.Registry) error {

	if err := validate.Required("ipAddress", "body", m.IPAddress); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validatePortConfiguration(formats strfmt.Registry) error {

	if err := validate.Required("portConfiguration", "body", m.PortConfiguration); err != nil {
		return err
	}

	for i := 0; i < len(m.PortConfiguration); i++ {
		if swag.IsZero(m.PortConfiguration[i]) { // not required
			continue
		}

		if m.PortConfiguration[i] != nil {
			if err := m.PortConfiguration[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("portConfiguration" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateServerConfiguration(formats strfmt.Registry) error {

	if err := validate.Required("serverConfiguration", "body", m.ServerConfiguration); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateServerID(formats strfmt.Registry) error {

	if err := validate.Required("serverId", "body", m.ServerID); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("sessionId", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetServerInfoResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetServerInfoResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetServerInfoResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetServerInfoResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

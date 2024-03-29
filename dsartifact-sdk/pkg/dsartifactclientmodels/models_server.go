// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsartifactclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsServer Models server
//
// swagger:model Models server.
type ModelsServer struct {

	// allocation_id
	// Required: true
	AllocationID *string `json:"allocation_id"`

	// alternate_ips
	// Required: true
	AlternateIps []string `json:"alternate_ips"`

	// artifact_path
	// Required: true
	ArtifactPath *string `json:"artifact_path"`

	// cpu_limit
	// Required: true
	// Format: int32
	CPULimit *int32 `json:"cpu_limit"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// game_version
	// Required: true
	GameVersion *string `json:"game_version"`

	// image_version
	// Required: true
	ImageVersion *string `json:"image_version"`

	// ip
	// Required: true
	IP *string `json:"ip"`

	// is_core_dump_enabled
	// Required: true
	IsCoreDumpEnabled *bool `json:"is_core_dump_enabled"`

	// last_update
	// Required: true
	// Format: date-time
	LastUpdate strfmt.DateTime `json:"last_update"`

	// mem_limit
	// Required: true
	// Format: int32
	MemLimit *int32 `json:"mem_limit"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// params
	// Required: true
	Params *string `json:"params"`

	// pod_name
	// Required: true
	PodName *string `json:"pod_name"`

	// port
	// Required: true
	// Format: int32
	Port *int32 `json:"port"`

	// ports
	// Required: true
	Ports map[string]int64 `json:"ports"`

	// provider
	// Required: true
	Provider *string `json:"provider"`

	// region
	// Required: true
	Region *string `json:"region"`

	// session_id
	// Required: true
	SessionID *string `json:"session_id"`

	// status
	// Required: true
	Status *string `json:"status"`

	// status_history
	// Required: true
	StatusHistory []*ModelsStatusHistory `json:"status_history"`
}

// Validate validates this Models server
func (m *ModelsServer) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllocationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAlternateIps(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateArtifactPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCPULimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIP(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsCoreDumpEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastUpdate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMemLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParams(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePort(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProvider(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusHistory(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsServer) validateAllocationID(formats strfmt.Registry) error {

	if err := validate.Required("allocation_id", "body", m.AllocationID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateAlternateIps(formats strfmt.Registry) error {

	if err := validate.Required("alternate_ips", "body", m.AlternateIps); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateArtifactPath(formats strfmt.Registry) error {

	if err := validate.Required("artifact_path", "body", m.ArtifactPath); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateCPULimit(formats strfmt.Registry) error {

	if err := validate.Required("cpu_limit", "body", m.CPULimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("game_version", "body", m.GameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateImageVersion(formats strfmt.Registry) error {

	if err := validate.Required("image_version", "body", m.ImageVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateIsCoreDumpEnabled(formats strfmt.Registry) error {

	if err := validate.Required("is_core_dump_enabled", "body", m.IsCoreDumpEnabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateLastUpdate(formats strfmt.Registry) error {

	if err := validate.Required("last_update", "body", strfmt.DateTime(m.LastUpdate)); err != nil {
		return err
	}

	if err := validate.FormatOf("last_update", "body", "date-time", m.LastUpdate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateMemLimit(formats strfmt.Registry) error {

	if err := validate.Required("mem_limit", "body", m.MemLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateParams(formats strfmt.Registry) error {

	if err := validate.Required("params", "body", m.Params); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("pod_name", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validatePort(formats strfmt.Registry) error {

	if err := validate.Required("port", "body", m.Port); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateProvider(formats strfmt.Registry) error {

	if err := validate.Required("provider", "body", m.Provider); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("session_id", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateStatusHistory(formats strfmt.Registry) error {

	if err := validate.Required("status_history", "body", m.StatusHistory); err != nil {
		return err
	}

	for i := 0; i < len(m.StatusHistory); i++ {
		if swag.IsZero(m.StatusHistory[i]) { // not required
			continue
		}

		if m.StatusHistory[i] != nil {
			if err := m.StatusHistory[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("status_history" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsServer) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsServer) UnmarshalBinary(b []byte) error {
	var res ModelsServer
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

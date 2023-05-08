// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

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

	// allocation_events
	// Required: true
	AllocationEvents []*ModelsAllocationEvent `json:"allocation_events"`

	// allocation_id
	// Required: true
	AllocationID *string `json:"allocation_id"`

	// alternate_ips
	// Required: true
	AlternateIps []string `json:"alternate_ips"`

	// cpu_limit
	// Required: true
	// Format: int32
	CPULimit *int32 `json:"cpu_limit"`

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// custom_attribute
	// Required: true
	CustomAttribute *string `json:"custom_attribute"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// deployment_override
	// Required: true
	DeploymentOverride *string `json:"deployment_override"`

	// game_version
	// Required: true
	GameVersion *string `json:"game_version"`

	// image_version
	// Required: true
	ImageVersion *string `json:"image_version"`

	// ip
	// Required: true
	IP *string `json:"ip"`

	// is_override_game_version
	// Required: true
	IsOverrideGameVersion *bool `json:"is_override_game_version"`

	// job_id
	// Required: true
	JobID *string `json:"job_id"`

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

	// protocol
	// Required: true
	Protocol *string `json:"protocol"`

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

	// termination_reason
	// Required: true
	TerminationReason *string `json:"termination_reason"`
}

// Validate validates this Models server
func (m *ModelsServer) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllocationEvents(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllocationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAlternateIps(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCPULimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCustomAttribute(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeploymentOverride(formats); err != nil {
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
	if err := m.validateIsOverrideGameVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJobID(formats); err != nil {
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
	if err := m.validateProtocol(formats); err != nil {
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
	if err := m.validateTerminationReason(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsServer) validateAllocationEvents(formats strfmt.Registry) error {

	if err := validate.Required("allocation_events", "body", m.AllocationEvents); err != nil {
		return err
	}

	for i := 0; i < len(m.AllocationEvents); i++ {
		if swag.IsZero(m.AllocationEvents[i]) { // not required
			continue
		}

		if m.AllocationEvents[i] != nil {
			if err := m.AllocationEvents[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("allocation_events" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

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

func (m *ModelsServer) validateCPULimit(formats strfmt.Registry) error {

	if err := validate.Required("cpu_limit", "body", m.CPULimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateCustomAttribute(formats strfmt.Registry) error {

	if err := validate.Required("custom_attribute", "body", m.CustomAttribute); err != nil {
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

func (m *ModelsServer) validateDeploymentOverride(formats strfmt.Registry) error {

	if err := validate.Required("deployment_override", "body", m.DeploymentOverride); err != nil {
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

func (m *ModelsServer) validateIsOverrideGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("is_override_game_version", "body", m.IsOverrideGameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServer) validateJobID(formats strfmt.Registry) error {

	if err := validate.Required("job_id", "body", m.JobID); err != nil {
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

func (m *ModelsServer) validateProtocol(formats strfmt.Registry) error {

	if err := validate.Required("protocol", "body", m.Protocol); err != nil {
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

func (m *ModelsServer) validateTerminationReason(formats strfmt.Registry) error {

	if err := validate.Required("termination_reason", "body", m.TerminationReason); err != nil {
		return err
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

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dslogmanagerclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsServerResponse Models server response
//
// swagger:model Models server response.
type ModelsServerResponse struct {

	// allocation_events
	AllocationEvents []*ModelsAllocationEvent `json:"allocation_events,omitempty"`

	// allocation_id
	// Required: true
	AllocationID *string `json:"allocation_id"`

	// alternate_ips
	AlternateIps []string `json:"alternate_ips,omitempty"`

	// artifact_path
	ArtifactPath string `json:"artifact_path,omitempty"`

	// cpu_limit
	// Required: true
	// Format: int32
	CPULimit *int32 `json:"cpu_limit"`

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

	// is_core_dump_enabled
	IsCoreDumpEnabled bool `json:"is_core_dump_enabled"`

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

	// match_id
	// Required: true
	MatchID *string `json:"match_id"`

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
	Ports map[string]int64 `json:"ports,omitempty"`

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
	StatusHistory []*ModelsStatusHistory `json:"status_history,omitempty"`

	// termination_reason
	// Required: true
	TerminationReason *string `json:"termination_reason"`

	// ulimit_file_size
	// Format: int32
	UlimitFileSize int32 `json:"ulimit_file_size,omitempty"`
}

// Validate validates this Models server response
func (m *ModelsServerResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllocationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCPULimit(formats); err != nil {
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
	if err := m.validateMatchID(formats); err != nil {
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
	if err := m.validateTerminationReason(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsServerResponse) validateAllocationID(formats strfmt.Registry) error {

	if err := validate.Required("allocation_id", "body", m.AllocationID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateCPULimit(formats strfmt.Registry) error {

	if err := validate.Required("cpu_limit", "body", m.CPULimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateDeploymentOverride(formats strfmt.Registry) error {

	if err := validate.Required("deployment_override", "body", m.DeploymentOverride); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("game_version", "body", m.GameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateImageVersion(formats strfmt.Registry) error {

	if err := validate.Required("image_version", "body", m.ImageVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateIP(formats strfmt.Registry) error {

	if err := validate.Required("ip", "body", m.IP); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateIsOverrideGameVersion(formats strfmt.Registry) error {

	if err := validate.Required("is_override_game_version", "body", m.IsOverrideGameVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateJobID(formats strfmt.Registry) error {

	if err := validate.Required("job_id", "body", m.JobID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateLastUpdate(formats strfmt.Registry) error {

	if err := validate.Required("last_update", "body", strfmt.DateTime(m.LastUpdate)); err != nil {
		return err
	}

	if err := validate.FormatOf("last_update", "body", "date-time", m.LastUpdate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("match_id", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateMemLimit(formats strfmt.Registry) error {

	if err := validate.Required("mem_limit", "body", m.MemLimit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateParams(formats strfmt.Registry) error {

	if err := validate.Required("params", "body", m.Params); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("pod_name", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validatePort(formats strfmt.Registry) error {

	if err := validate.Required("port", "body", m.Port); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateProtocol(formats strfmt.Registry) error {

	if err := validate.Required("protocol", "body", m.Protocol); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateProvider(formats strfmt.Registry) error {

	if err := validate.Required("provider", "body", m.Provider); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("session_id", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerResponse) validateTerminationReason(formats strfmt.Registry) error {

	if err := validate.Required("termination_reason", "body", m.TerminationReason); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsServerResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsServerResponse) UnmarshalBinary(b []byte) error {
	var res ModelsServerResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

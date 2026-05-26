// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// DomainKeyValueClusterConfig Domain key value cluster config
//
// swagger:model Domain key value cluster config.
type DomainKeyValueClusterConfig struct {

	// max_cluster_per_studio_private_cloud
	// Required: true
	// Format: int32
	MaxClusterPerStudioPrivateCloud *int32 `json:"max_cluster_per_studio_private_cloud"`

	// max_cluster_per_studio_shared_cloud
	// Required: true
	// Format: int32
	MaxClusterPerStudioSharedCloud *int32 `json:"max_cluster_per_studio_shared_cloud"`

	// max_integration_per_cluster
	// Required: true
	// Format: int32
	MaxIntegrationPerCluster *int32 `json:"max_integration_per_cluster"`
}

// Validate validates this Domain key value cluster config
func (m *DomainKeyValueClusterConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxClusterPerStudioPrivateCloud(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxClusterPerStudioSharedCloud(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxIntegrationPerCluster(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DomainKeyValueClusterConfig) validateMaxClusterPerStudioPrivateCloud(formats strfmt.Registry) error {

	if err := validate.Required("max_cluster_per_studio_private_cloud", "body", m.MaxClusterPerStudioPrivateCloud); err != nil {
		return err
	}

	return nil
}

func (m *DomainKeyValueClusterConfig) validateMaxClusterPerStudioSharedCloud(formats strfmt.Registry) error {

	if err := validate.Required("max_cluster_per_studio_shared_cloud", "body", m.MaxClusterPerStudioSharedCloud); err != nil {
		return err
	}

	return nil
}

func (m *DomainKeyValueClusterConfig) validateMaxIntegrationPerCluster(formats strfmt.Registry) error {

	if err := validate.Required("max_integration_per_cluster", "body", m.MaxIntegrationPerCluster); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DomainKeyValueClusterConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DomainKeyValueClusterConfig) UnmarshalBinary(b []byte) error {
	var res DomainKeyValueClusterConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

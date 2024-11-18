// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// GeneratedGetListOfConfigurationsV1DataItem Generated get list of configurations V1 data item
//
// swagger:model Generated get list of configurations V1 data item.
type GeneratedGetListOfConfigurationsV1DataItem struct {

	// applymask
	ApplyMask bool `json:"applyMask"`

	// configid
	ConfigID string `json:"configId,omitempty"`

	// configname
	ConfigName string `json:"configName,omitempty"`

	// configtype
	ConfigType string `json:"configType,omitempty"`

	// deploymentstatus
	DeploymentStatus string `json:"deploymentStatus,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// editable
	Editable bool `json:"editable"`

	// ishidden
	IsHidden bool `json:"isHidden"`

	// source
	Source string `json:"source,omitempty"`

	// value
	Value string `json:"value,omitempty"`
}

// Validate validates this Generated get list of configurations V1 data item
func (m *GeneratedGetListOfConfigurationsV1DataItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedGetListOfConfigurationsV1DataItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedGetListOfConfigurationsV1DataItem) UnmarshalBinary(b []byte) error {
	var res GeneratedGetListOfConfigurationsV1DataItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

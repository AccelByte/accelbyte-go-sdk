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

// ApimodelGetListOfConfigurationsV2DataItem Apimodel get list of configurations V2 data item
//
// swagger:model Apimodel get list of configurations V2 data item.
type ApimodelGetListOfConfigurationsV2DataItem struct {

	// applymask
	ApplyMask bool `json:"applyMask"`

	// configid
	// Required: true
	ConfigID *string `json:"configId"`

	// configname
	// Required: true
	ConfigName *string `json:"configName"`

	// configtype
	// Required: true
	ConfigType *string `json:"configType"`

	// deploymentstatus
	// Required: true
	DeploymentStatus *string `json:"deploymentStatus"`

	// description
	Description string `json:"description,omitempty"`

	// editable
	Editable bool `json:"editable"`

	// ishidden
	// Required: true
	IsHidden *bool `json:"isHidden"`

	// source
	Source string `json:"source,omitempty"`

	// value
	// Required: true
	Value *string `json:"value"`
}

// Validate validates this Apimodel get list of configurations V2 data item
func (m *ApimodelGetListOfConfigurationsV2DataItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConfigName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConfigType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeploymentStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsHidden(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetListOfConfigurationsV2DataItem) validateConfigID(formats strfmt.Registry) error {

	if err := validate.Required("configId", "body", m.ConfigID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetListOfConfigurationsV2DataItem) validateConfigName(formats strfmt.Registry) error {

	if err := validate.Required("configName", "body", m.ConfigName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetListOfConfigurationsV2DataItem) validateConfigType(formats strfmt.Registry) error {

	if err := validate.Required("configType", "body", m.ConfigType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetListOfConfigurationsV2DataItem) validateDeploymentStatus(formats strfmt.Registry) error {

	if err := validate.Required("deploymentStatus", "body", m.DeploymentStatus); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetListOfConfigurationsV2DataItem) validateIsHidden(formats strfmt.Registry) error {

	if err := validate.Required("isHidden", "body", m.IsHidden); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetListOfConfigurationsV2DataItem) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetListOfConfigurationsV2DataItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetListOfConfigurationsV2DataItem) UnmarshalBinary(b []byte) error {
	var res ApimodelGetListOfConfigurationsV2DataItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

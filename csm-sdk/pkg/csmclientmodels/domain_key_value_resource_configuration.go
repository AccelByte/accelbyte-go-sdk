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

// DomainKeyValueResourceConfiguration Domain key value resource configuration
//
// swagger:model Domain key value resource configuration.
type DomainKeyValueResourceConfiguration struct {

	// clustername
	// Required: true
	ClusterName *string `json:"clusterName"`

	// maxdatastoragegb
	// Required: true
	// Format: int32
	MaxDataStorageGB *int32 `json:"maxDataStorageGB"`

	// maxecpupersecond
	// Required: true
	// Format: int32
	MaxECPUPerSecond *int32 `json:"maxECPUPerSecond"`

	// profilename
	// Required: true
	ProfileName *string `json:"profileName"`
}

// Validate validates this Domain key value resource configuration
func (m *DomainKeyValueResourceConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClusterName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxDataStorageGB(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxECPUPerSecond(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProfileName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DomainKeyValueResourceConfiguration) validateClusterName(formats strfmt.Registry) error {

	if err := validate.Required("clusterName", "body", m.ClusterName); err != nil {
		return err
	}

	return nil
}

func (m *DomainKeyValueResourceConfiguration) validateMaxDataStorageGB(formats strfmt.Registry) error {

	if err := validate.Required("maxDataStorageGB", "body", m.MaxDataStorageGB); err != nil {
		return err
	}

	return nil
}

func (m *DomainKeyValueResourceConfiguration) validateMaxECPUPerSecond(formats strfmt.Registry) error {

	if err := validate.Required("maxECPUPerSecond", "body", m.MaxECPUPerSecond); err != nil {
		return err
	}

	return nil
}

func (m *DomainKeyValueResourceConfiguration) validateProfileName(formats strfmt.Registry) error {

	if err := validate.Required("profileName", "body", m.ProfileName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DomainKeyValueResourceConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DomainKeyValueResourceConfiguration) UnmarshalBinary(b []byte) error {
	var res DomainKeyValueResourceConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

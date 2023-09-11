// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsImageReplication Models image replication
//
// swagger:model Models image replication.
type ModelsImageReplication struct {

	// failure_code
	// Required: true
	FailureCode *string `json:"failure_code"`

	// region
	// Required: true
	Region *string `json:"region"`

	// status
	// Required: true
	Status *string `json:"status"`

	// uri
	// Required: true
	URI *string `json:"uri"`
}

// Validate validates this Models image replication
func (m *ModelsImageReplication) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFailureCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateURI(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsImageReplication) validateFailureCode(formats strfmt.Registry) error {

	if err := validate.Required("failure_code", "body", m.FailureCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImageReplication) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImageReplication) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImageReplication) validateURI(formats strfmt.Registry) error {

	if err := validate.Required("uri", "body", m.URI); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsImageReplication) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsImageReplication) UnmarshalBinary(b []byte) error {
	var res ModelsImageReplication
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

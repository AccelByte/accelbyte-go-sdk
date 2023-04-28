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

// ModelsImageRecordUpdate Models image record update
//
// swagger:model Models image record update.
type ModelsImageRecordUpdate struct {

	// artifactpath
	// Required: true
	ArtifactPath *string `json:"artifactPath"`

	// image
	// Required: true
	Image *string `json:"image"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// persistent
	// Required: true
	Persistent *bool `json:"persistent"`

	// version
	// Required: true
	Version *string `json:"version"`
}

// Validate validates this Models image record update
func (m *ModelsImageRecordUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateArtifactPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePersistent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVersion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsImageRecordUpdate) validateArtifactPath(formats strfmt.Registry) error {

	if err := validate.Required("artifactPath", "body", m.ArtifactPath); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImageRecordUpdate) validateImage(formats strfmt.Registry) error {

	if err := validate.Required("image", "body", m.Image); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImageRecordUpdate) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImageRecordUpdate) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImageRecordUpdate) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsImageRecordUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsImageRecordUpdate) UnmarshalBinary(b []byte) error {
	var res ModelsImageRecordUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

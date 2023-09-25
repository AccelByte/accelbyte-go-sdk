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

// ModelsCreateImagePatchRequest Models create image patch request
//
// swagger:model Models create image patch request.
type ModelsCreateImagePatchRequest struct {

	// artifactpath
	// Required: true
	ArtifactPath *string `json:"artifactPath"`

	// coredumpenabled
	// Required: true
	CoreDumpEnabled *bool `json:"coreDumpEnabled"`

	// dockerpath
	// Required: true
	DockerPath *string `json:"dockerPath"`

	// image
	// Required: true
	Image *string `json:"image"`

	// imagesize
	// Required: true
	// Format: int64
	ImageSize *int64 `json:"imageSize"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// patchversion
	// Required: true
	PatchVersion *string `json:"patchVersion"`

	// persistent
	// Required: true
	Persistent *bool `json:"persistent"`

	// ulimitfilesize
	// Required: true
	// Format: int32
	UlimitFileSize *int32 `json:"ulimitFileSize"`

	// uploaderflag
	// Required: true
	UploaderFlag *string `json:"uploaderFlag"`

	// version
	// Required: true
	Version *string `json:"version"`
}

// Validate validates this Models create image patch request
func (m *ModelsCreateImagePatchRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateArtifactPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCoreDumpEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDockerPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePatchVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePersistent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUlimitFileSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUploaderFlag(formats); err != nil {
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

func (m *ModelsCreateImagePatchRequest) validateArtifactPath(formats strfmt.Registry) error {

	if err := validate.Required("artifactPath", "body", m.ArtifactPath); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validateCoreDumpEnabled(formats strfmt.Registry) error {

	if err := validate.Required("coreDumpEnabled", "body", m.CoreDumpEnabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validateDockerPath(formats strfmt.Registry) error {

	if err := validate.Required("dockerPath", "body", m.DockerPath); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validateImage(formats strfmt.Registry) error {

	if err := validate.Required("image", "body", m.Image); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validateImageSize(formats strfmt.Registry) error {

	if err := validate.Required("imageSize", "body", m.ImageSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validatePatchVersion(formats strfmt.Registry) error {

	if err := validate.Required("patchVersion", "body", m.PatchVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validateUlimitFileSize(formats strfmt.Registry) error {

	if err := validate.Required("ulimitFileSize", "body", m.UlimitFileSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validateUploaderFlag(formats strfmt.Registry) error {

	if err := validate.Required("uploaderFlag", "body", m.UploaderFlag); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateImagePatchRequest) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateImagePatchRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateImagePatchRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateImagePatchRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

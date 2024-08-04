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

// ModelsPatchImageRecordResponse Models patch image record response
//
// swagger:model Models patch image record response.
type ModelsPatchImageRecordResponse struct {

	// artifactpath
	ArtifactPath string `json:"artifactPath,omitempty"`

	// coredumpenabled
	CoreDumpEnabled bool `json:"coreDumpEnabled"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// dockerpath
	// Required: true
	DockerPath *string `json:"dockerPath"`

	// image
	// Required: true
	Image *string `json:"image"`

	// imagereplications
	ImageReplications []*ModelsImageReplication `json:"imageReplications,omitempty"`

	// imagereplicationsmap
	ImageReplicationsMap map[string]ModelsImageReplication `json:"imageReplicationsMap,omitempty"`

	// imagesize
	// Required: true
	// Format: int64
	ImageSize *int64 `json:"imageSize"`

	// modifiedby
	// Required: true
	ModifiedBy *string `json:"modifiedBy"`

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
	// Format: int32
	UlimitFileSize int32 `json:"ulimitFileSize,omitempty"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// uploaderflag
	// Required: true
	UploaderFlag *string `json:"uploaderFlag"`

	// version
	// Required: true
	Version *string `json:"version"`
}

// Validate validates this Models patch image record response
func (m *ModelsPatchImageRecordResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
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
	if err := m.validateModifiedBy(formats); err != nil {
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
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *ModelsPatchImageRecordResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validateDockerPath(formats strfmt.Registry) error {

	if err := validate.Required("dockerPath", "body", m.DockerPath); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validateImage(formats strfmt.Registry) error {

	if err := validate.Required("image", "body", m.Image); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validateImageSize(formats strfmt.Registry) error {

	if err := validate.Required("imageSize", "body", m.ImageSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validateModifiedBy(formats strfmt.Registry) error {

	if err := validate.Required("modifiedBy", "body", m.ModifiedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validatePatchVersion(formats strfmt.Registry) error {

	if err := validate.Required("patchVersion", "body", m.PatchVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validateUploaderFlag(formats strfmt.Registry) error {

	if err := validate.Required("uploaderFlag", "body", m.UploaderFlag); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecordResponse) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPatchImageRecordResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPatchImageRecordResponse) UnmarshalBinary(b []byte) error {
	var res ModelsPatchImageRecordResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

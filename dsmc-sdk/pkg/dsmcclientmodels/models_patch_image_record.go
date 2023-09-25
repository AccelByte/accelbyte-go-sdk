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

// ModelsPatchImageRecord Models patch image record
//
// swagger:model Models patch image record.
type ModelsPatchImageRecord struct {

	// artifactpath
	// Required: true
	ArtifactPath *string `json:"artifactPath"`

	// coredumpenabled
	// Required: true
	CoreDumpEnabled *bool `json:"coreDumpEnabled"`

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
	// Required: true
	ImageReplications []*ModelsImageReplication `json:"imageReplications"`

	// imagereplicationsmap
	// Required: true
	ImageReplicationsMap map[string]ModelsImageReplication `json:"imageReplicationsMap"`

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
	// Required: true
	// Format: int32
	UlimitFileSize *int32 `json:"ulimitFileSize"`

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

// Validate validates this Models patch image record
func (m *ModelsPatchImageRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateArtifactPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCoreDumpEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDockerPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageReplications(formats); err != nil {
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
	if err := m.validateUlimitFileSize(formats); err != nil {
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

func (m *ModelsPatchImageRecord) validateArtifactPath(formats strfmt.Registry) error {

	if err := validate.Required("artifactPath", "body", m.ArtifactPath); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateCoreDumpEnabled(formats strfmt.Registry) error {

	if err := validate.Required("coreDumpEnabled", "body", m.CoreDumpEnabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateDockerPath(formats strfmt.Registry) error {

	if err := validate.Required("dockerPath", "body", m.DockerPath); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateImage(formats strfmt.Registry) error {

	if err := validate.Required("image", "body", m.Image); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateImageReplications(formats strfmt.Registry) error {

	if err := validate.Required("imageReplications", "body", m.ImageReplications); err != nil {
		return err
	}

	for i := 0; i < len(m.ImageReplications); i++ {
		if swag.IsZero(m.ImageReplications[i]) { // not required
			continue
		}

		if m.ImageReplications[i] != nil {
			if err := m.ImageReplications[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("imageReplications" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsPatchImageRecord) validateImageReplicationsMap(formats strfmt.Registry) error {

	if err := validate.Required("imageReplicationsMap", "body", m.ImageReplicationsMap); err != nil {
		return err
	}

	for k := range m.ImageReplicationsMap {

		if err := validate.Required("imageReplicationsMap"+"."+k, "body", m.ImageReplicationsMap[k]); err != nil {
			return err
		}
		if val, ok := m.ImageReplicationsMap[k]; ok {
			if err := val.Validate(formats); err != nil {
				return err
			}
		}

	}

	return nil
}

func (m *ModelsPatchImageRecord) validateImageSize(formats strfmt.Registry) error {

	if err := validate.Required("imageSize", "body", m.ImageSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateModifiedBy(formats strfmt.Registry) error {

	if err := validate.Required("modifiedBy", "body", m.ModifiedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validatePatchVersion(formats strfmt.Registry) error {

	if err := validate.Required("patchVersion", "body", m.PatchVersion); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateUlimitFileSize(formats strfmt.Registry) error {

	if err := validate.Required("ulimitFileSize", "body", m.UlimitFileSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateUploaderFlag(formats strfmt.Registry) error {

	if err := validate.Required("uploaderFlag", "body", m.UploaderFlag); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPatchImageRecord) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPatchImageRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPatchImageRecord) UnmarshalBinary(b []byte) error {
	var res ModelsPatchImageRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

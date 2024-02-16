// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsartifactclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsArtifactFileStatus Models artifact file status
//
// swagger:model Models artifact file status.
type ModelsArtifactFileStatus struct {

	// artifact_existence
	// Required: true
	ArtifactExistence *bool `json:"artifact_existence"`

	// artifact_status
	ArtifactStatus string `json:"artifact_status,omitempty"`
}

// Validate validates this Models artifact file status
func (m *ModelsArtifactFileStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateArtifactExistence(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsArtifactFileStatus) validateArtifactExistence(formats strfmt.Registry) error {

	if err := validate.Required("artifact_existence", "body", m.ArtifactExistence); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsArtifactFileStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsArtifactFileStatus) UnmarshalBinary(b []byte) error {
	var res ModelsArtifactFileStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

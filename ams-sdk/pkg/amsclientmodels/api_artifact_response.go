// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIArtifactResponse Api artifact response
//
// swagger:model Api artifact response.
type APIArtifactResponse struct {

	// artifacttype
	// Required: true
	ArtifactType *string `json:"artifactType"`

	// createdon
	// Required: true
	CreatedOn *string `json:"createdOn"`

	// dsid
	// Required: true
	DsID *string `json:"dsId"`

	// expireson
	// Required: true
	ExpiresOn *string `json:"expiresOn"`

	// filename
	// Required: true
	Filename *string `json:"filename"`

	// fleetid
	// Required: true
	FleetID *string `json:"fleetId"`

	// id
	// Required: true
	ID *string `json:"id"`

	// imageid
	// Required: true
	ImageID *string `json:"imageId"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// reason
	Reason string `json:"reason,omitempty"`

	// region
	// Required: true
	Region *string `json:"region"`

	// sizebytes
	// Required: true
	// Format: int64
	SizeBytes *int64 `json:"sizeBytes"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Api artifact response
func (m *APIArtifactResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateArtifactType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedOn(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDsID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiresOn(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFilename(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFleetID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSizeBytes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIArtifactResponse) validateArtifactType(formats strfmt.Registry) error {

	if err := validate.Required("artifactType", "body", m.ArtifactType); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateCreatedOn(formats strfmt.Registry) error {

	if err := validate.Required("createdOn", "body", m.CreatedOn); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateDsID(formats strfmt.Registry) error {

	if err := validate.Required("dsId", "body", m.DsID); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateExpiresOn(formats strfmt.Registry) error {

	if err := validate.Required("expiresOn", "body", m.ExpiresOn); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateFilename(formats strfmt.Registry) error {

	if err := validate.Required("filename", "body", m.Filename); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateFleetID(formats strfmt.Registry) error {

	if err := validate.Required("fleetId", "body", m.FleetID); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateImageID(formats strfmt.Registry) error {

	if err := validate.Required("imageId", "body", m.ImageID); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateSizeBytes(formats strfmt.Registry) error {

	if err := validate.Required("sizeBytes", "body", m.SizeBytes); err != nil {
		return err
	}

	return nil
}

func (m *APIArtifactResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIArtifactResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIArtifactResponse) UnmarshalBinary(b []byte) error {
	var res APIArtifactResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

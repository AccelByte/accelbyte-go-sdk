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

// ApimodelGetAppImageListV2DataItem Apimodel get app image list V2 data item
//
// swagger:model Apimodel get app image list V2 data item.
type ApimodelGetAppImageListV2DataItem struct {

	// isactive
	// Required: true
	IsActive *bool `json:"IsActive"`

	// imagedigest
	// Required: true
	ImageDigest *string `json:"imageDigest"`

	// imagescanresult
	ImageScanResult *ApimodelGetAppImageListV2DataItemImageScanResult `json:"imageScanResult,omitempty"`

	// imagescanstatus
	ImageScanStatus *ApimodelGetAppImageListV2DataItemImageScanStatus `json:"imageScanStatus,omitempty"`

	// imagetag
	// Required: true
	ImageTag *string `json:"imageTag"`

	// size
	// Required: true
	// Format: int64
	Size *int64 `json:"size"`

	// updatedat
	UpdatedAt string `json:"updatedAt,omitempty"`
}

// Validate validates this Apimodel get app image list V2 data item
func (m *ApimodelGetAppImageListV2DataItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageDigest(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageTag(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSize(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetAppImageListV2DataItem) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("IsActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetAppImageListV2DataItem) validateImageDigest(formats strfmt.Registry) error {

	if err := validate.Required("imageDigest", "body", m.ImageDigest); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetAppImageListV2DataItem) validateImageTag(formats strfmt.Registry) error {

	if err := validate.Required("imageTag", "body", m.ImageTag); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetAppImageListV2DataItem) validateSize(formats strfmt.Registry) error {

	if err := validate.Required("size", "body", m.Size); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetAppImageListV2DataItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetAppImageListV2DataItem) UnmarshalBinary(b []byte) error {
	var res ApimodelGetAppImageListV2DataItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

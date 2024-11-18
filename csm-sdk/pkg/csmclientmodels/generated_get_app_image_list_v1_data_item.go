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

// GeneratedGetAppImageListV1DataItem Generated get app image list V1 data item
//
// swagger:model Generated get app image list V1 data item.
type GeneratedGetAppImageListV1DataItem struct {

	// imagedigest
	// Required: true
	ImageDigest *string `json:"imageDigest"`

	// imagescanstatus
	ImageScanStatus *GeneratedGetAppImageListV1DataItemImageScanStatus `json:"imageScanStatus,omitempty"`

	// imagetag
	// Required: true
	ImageTag *string `json:"imageTag"`

	// size
	// Format: int64
	Size int64 `json:"size,omitempty"`

	// updatedat
	UpdatedAt string `json:"updatedAt,omitempty"`
}

// Validate validates this Generated get app image list V1 data item
func (m *GeneratedGetAppImageListV1DataItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateImageDigest(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageTag(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedGetAppImageListV1DataItem) validateImageDigest(formats strfmt.Registry) error {

	if err := validate.Required("imageDigest", "body", m.ImageDigest); err != nil {
		return err
	}

	return nil
}

func (m *GeneratedGetAppImageListV1DataItem) validateImageTag(formats strfmt.Registry) error {

	if err := validate.Required("imageTag", "body", m.ImageTag); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedGetAppImageListV1DataItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedGetAppImageListV1DataItem) UnmarshalBinary(b []byte) error {
	var res GeneratedGetAppImageListV1DataItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

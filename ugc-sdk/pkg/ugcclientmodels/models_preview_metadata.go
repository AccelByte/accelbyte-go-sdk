// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPreviewMetadata Models preview metadata
//
// swagger:model Models preview metadata.
type ModelsPreviewMetadata struct {

	// previewcontenttype
	// Required: true
	PreviewContentType *string `json:"previewContentType"`

	// previewfileextension
	// Required: true
	PreviewFileExtension *string `json:"previewFileExtension"`
}

// Validate validates this Models preview metadata
func (m *ModelsPreviewMetadata) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePreviewContentType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePreviewFileExtension(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPreviewMetadata) validatePreviewContentType(formats strfmt.Registry) error {

	if err := validate.Required("previewContentType", "body", m.PreviewContentType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPreviewMetadata) validatePreviewFileExtension(formats strfmt.Registry) error {

	if err := validate.Required("previewFileExtension", "body", m.PreviewFileExtension); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPreviewMetadata) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPreviewMetadata) UnmarshalBinary(b []byte) error {
	var res ModelsPreviewMetadata
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

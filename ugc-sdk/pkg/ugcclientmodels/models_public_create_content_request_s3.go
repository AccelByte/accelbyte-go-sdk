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

// ModelsPublicCreateContentRequestS3 Models public create content request S3
//
// swagger:model Models public create content request S3.
type ModelsPublicCreateContentRequestS3 struct {

	// contenttype
	ContentType string `json:"contentType,omitempty"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// fileextension
	FileExtension string `json:"fileExtension,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// Preview is legacy code, please use Screenshot instead
	// Required: true
	Preview *string `json:"preview"`

	// previewmetadata
	PreviewMetadata *ModelsPreviewMetadata `json:"previewMetadata,omitempty"`

	// subtype
	// Required: true
	SubType *string `json:"subType"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Models public create content request S3
func (m *ModelsPublicCreateContentRequestS3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePreview(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPublicCreateContentRequestS3) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateContentRequestS3) validatePreview(formats strfmt.Registry) error {

	if err := validate.Required("preview", "body", m.Preview); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateContentRequestS3) validateSubType(formats strfmt.Registry) error {

	if err := validate.Required("subType", "body", m.SubType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateContentRequestS3) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicCreateContentRequestS3) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPublicCreateContentRequestS3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPublicCreateContentRequestS3) UnmarshalBinary(b []byte) error {
	var res ModelsPublicCreateContentRequestS3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

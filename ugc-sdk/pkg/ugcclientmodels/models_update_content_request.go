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

// ModelsUpdateContentRequest Models update content request
//
// swagger:model Models update content request.
type ModelsUpdateContentRequest struct {

	// contenttype
	// Required: true
	ContentType *string `json:"contentType"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// fileextension
	// Required: true
	FileExtension *string `json:"fileExtension"`

	// name
	// Required: true
	Name *string `json:"name"`

	// payload
	// Required: true
	Payload *string `json:"payload"`

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

	// updatecontentfile
	// Required: true
	UpdateContentFile *bool `json:"updateContentFile"`
}

// Validate validates this Models update content request
func (m *ModelsUpdateContentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFileExtension(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePayload(formats); err != nil {
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
	if err := m.validateUpdateContentFile(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateContentRequest) validateContentType(formats strfmt.Registry) error {

	if err := validate.Required("contentType", "body", m.ContentType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateContentRequest) validateFileExtension(formats strfmt.Registry) error {

	if err := validate.Required("fileExtension", "body", m.FileExtension); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateContentRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateContentRequest) validatePayload(formats strfmt.Registry) error {

	if err := validate.Required("payload", "body", m.Payload); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateContentRequest) validatePreview(formats strfmt.Registry) error {

	if err := validate.Required("preview", "body", m.Preview); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateContentRequest) validateSubType(formats strfmt.Registry) error {

	if err := validate.Required("subType", "body", m.SubType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateContentRequest) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateContentRequest) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateContentRequest) validateUpdateContentFile(formats strfmt.Registry) error {

	if err := validate.Required("updateContentFile", "body", m.UpdateContentFile); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateContentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateContentRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateContentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

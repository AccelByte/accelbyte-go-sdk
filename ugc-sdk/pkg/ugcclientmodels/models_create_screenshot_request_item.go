// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreateScreenshotRequestItem Models create screenshot request item
//
// swagger:model Models create screenshot request item.
type ModelsCreateScreenshotRequestItem struct {

	// contenttype
	ContentType string `json:"contentType,omitempty"`

	// description
	// Required: true
	Description *string `json:"description"`

	// fileextension
	// Enum: ['bmp', 'jfif', 'jpeg', 'jpg', 'pjp', 'png']
	// Required: true
	FileExtension *string `json:"fileExtension"`
}

// Validate validates this Models create screenshot request item
func (m *ModelsCreateScreenshotRequestItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFileExtension(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateScreenshotRequestItem) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

var modelsCreateScreenshotRequestItemTypeFileExtensionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["BMP", "JFIF", "JPEG", "JPG", "PJP", "PNG"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsCreateScreenshotRequestItemTypeFileExtensionPropEnum = append(modelsCreateScreenshotRequestItemTypeFileExtensionPropEnum, v)
	}
}

const (

	// ModelsCreateScreenshotRequestItemFileExtensionBMP captures enum value "BMP"
	ModelsCreateScreenshotRequestItemFileExtensionBMP string = "BMP"

	// ModelsCreateScreenshotRequestItemFileExtensionJFIF captures enum value "JFIF"
	ModelsCreateScreenshotRequestItemFileExtensionJFIF string = "JFIF"

	// ModelsCreateScreenshotRequestItemFileExtensionJPEG captures enum value "JPEG"
	ModelsCreateScreenshotRequestItemFileExtensionJPEG string = "JPEG"

	// ModelsCreateScreenshotRequestItemFileExtensionJPG captures enum value "JPG"
	ModelsCreateScreenshotRequestItemFileExtensionJPG string = "JPG"

	// ModelsCreateScreenshotRequestItemFileExtensionPJP captures enum value "PJP"
	ModelsCreateScreenshotRequestItemFileExtensionPJP string = "PJP"

	// ModelsCreateScreenshotRequestItemFileExtensionPNG captures enum value "PNG"
	ModelsCreateScreenshotRequestItemFileExtensionPNG string = "PNG"
)

// prop value enum
func (m *ModelsCreateScreenshotRequestItem) validateFileExtensionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsCreateScreenshotRequestItemTypeFileExtensionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsCreateScreenshotRequestItem) validateFileExtension(formats strfmt.Registry) error {

	if err := validate.Required("fileExtension", "body", m.FileExtension); err != nil {
		return err
	}

	// value enum
	if err := m.validateFileExtensionEnum("fileExtension", "body", *m.FileExtension); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateScreenshotRequestItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateScreenshotRequestItem) UnmarshalBinary(b []byte) error {
	var res ModelsCreateScreenshotRequestItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

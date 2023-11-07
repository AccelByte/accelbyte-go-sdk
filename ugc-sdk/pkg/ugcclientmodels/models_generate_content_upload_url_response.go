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

// ModelsGenerateContentUploadURLResponse Models generate content upload URL response
//
// swagger:model Models generate content upload URL response.
type ModelsGenerateContentUploadURLResponse struct {

	// S3 content type
	ContentType string `json:"contentType,omitempty"`

	// fileextension
	FileExtension string `json:"fileExtension,omitempty"`

	// S3 file location
	// Required: true
	FileLocation *string `json:"fileLocation"`

	// url
	// Required: true
	URL *string `json:"url"`
}

// Validate validates this Models generate content upload URL response
func (m *ModelsGenerateContentUploadURLResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFileLocation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGenerateContentUploadURLResponse) validateFileLocation(formats strfmt.Registry) error {

	if err := validate.Required("fileLocation", "body", m.FileLocation); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGenerateContentUploadURLResponse) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGenerateContentUploadURLResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGenerateContentUploadURLResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGenerateContentUploadURLResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

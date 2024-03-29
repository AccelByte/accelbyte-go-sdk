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

// ModelsScreenshotResponse Models screenshot response
//
// swagger:model Models screenshot response.
type ModelsScreenshotResponse struct {

	// contenttype
	ContentType string `json:"contentType,omitempty"`

	// description
	// Required: true
	Description *string `json:"description"`

	// fileextension
	// Required: true
	FileExtension *string `json:"fileExtension"`

	// screenshotid
	// Required: true
	ScreenshotID *string `json:"screenshotId"`

	// source
	// Required: true
	Source *string `json:"source"`

	// url
	// Required: true
	URL *string `json:"url"`
}

// Validate validates this Models screenshot response
func (m *ModelsScreenshotResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFileExtension(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScreenshotID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSource(formats); err != nil {
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

func (m *ModelsScreenshotResponse) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsScreenshotResponse) validateFileExtension(formats strfmt.Registry) error {

	if err := validate.Required("fileExtension", "body", m.FileExtension); err != nil {
		return err
	}

	return nil
}

func (m *ModelsScreenshotResponse) validateScreenshotID(formats strfmt.Registry) error {

	if err := validate.Required("screenshotId", "body", m.ScreenshotID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsScreenshotResponse) validateSource(formats strfmt.Registry) error {

	if err := validate.Required("source", "body", m.Source); err != nil {
		return err
	}

	return nil
}

func (m *ModelsScreenshotResponse) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsScreenshotResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsScreenshotResponse) UnmarshalBinary(b []byte) error {
	var res ModelsScreenshotResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

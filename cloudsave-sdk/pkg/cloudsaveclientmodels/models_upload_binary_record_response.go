// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUploadBinaryRecordResponse Models upload binary record response
//
// swagger:model Models upload binary record response.
type ModelsUploadBinaryRecordResponse struct {

	// File type of game binary record
	// Required: true
	ContentType *string `json:"content_type"`

	// File location of the binary record
	// Required: true
	FileLocation *string `json:"file_location"`

	// URL for accessing the binary record
	// Required: true
	URL *string `json:"url"`

	// Version of the binary file
	// Required: true
	// Format: int32
	Version *int32 `json:"version"`
}

// Validate validates this Models upload binary record response
func (m *ModelsUploadBinaryRecordResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFileLocation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVersion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUploadBinaryRecordResponse) validateContentType(formats strfmt.Registry) error {

	if err := validate.Required("content_type", "body", m.ContentType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUploadBinaryRecordResponse) validateFileLocation(formats strfmt.Registry) error {

	if err := validate.Required("file_location", "body", m.FileLocation); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUploadBinaryRecordResponse) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUploadBinaryRecordResponse) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUploadBinaryRecordResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUploadBinaryRecordResponse) UnmarshalBinary(b []byte) error {
	var res ModelsUploadBinaryRecordResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

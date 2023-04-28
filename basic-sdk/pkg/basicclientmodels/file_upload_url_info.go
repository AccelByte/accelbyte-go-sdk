// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// FileUploadURLInfo File upload url info
//
// swagger:model File upload url info.
type FileUploadURLInfo struct {

	// URL for accessing file
	AccessURL string `json:"accessUrl,omitempty"`

	// File content-type
	ContentType string `json:"contentType,omitempty"`

	// HTTP method for uploading file
	Method string `json:"method,omitempty"`

	// URL for uploading file (S3 presigned URL)
	URL string `json:"url,omitempty"`
}

// Validate validates this File upload url info
func (m *FileUploadURLInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FileUploadURLInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FileUploadURLInfo) UnmarshalBinary(b []byte) error {
	var res FileUploadURLInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

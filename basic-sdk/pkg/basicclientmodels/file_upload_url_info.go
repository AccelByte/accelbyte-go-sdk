// Code generated by go-swagger; DO NOT EDIT.

package basicclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// FileUploadURLInfo file upload Url info
//
// swagger:model FileUploadUrlInfo
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

// Validate validates this file upload Url info
func (m *FileUploadURLInfo) Validate(formats strfmt.Registry) error {
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

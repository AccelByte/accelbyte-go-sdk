// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsGenerateContentUploadURLRequest Models generate content upload URL request
//
// swagger:model Models generate content upload URL request.
type ModelsGenerateContentUploadURLRequest struct {

	// S3 content type
	ContentType string `json:"contentType,omitempty"`

	// fileextension
	FileExtension string `json:"fileExtension,omitempty"`
}

// Validate validates this Models generate content upload URL request
func (m *ModelsGenerateContentUploadURLRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGenerateContentUploadURLRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGenerateContentUploadURLRequest) UnmarshalBinary(b []byte) error {
	var res ModelsGenerateContentUploadURLRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

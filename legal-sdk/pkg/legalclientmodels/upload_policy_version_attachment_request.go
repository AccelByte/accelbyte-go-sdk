// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UploadPolicyVersionAttachmentRequest Upload policy version attachment request
//
// swagger:model Upload policy version attachment request.
type UploadPolicyVersionAttachmentRequest struct {

	// contentmd5
	ContentMD5 string `json:"contentMD5,omitempty"`

	// contenttype
	ContentType string `json:"contentType,omitempty"`
}

// Validate validates this Upload policy version attachment request
func (m *UploadPolicyVersionAttachmentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UploadPolicyVersionAttachmentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UploadPolicyVersionAttachmentRequest) UnmarshalBinary(b []byte) error {
	var res UploadPolicyVersionAttachmentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

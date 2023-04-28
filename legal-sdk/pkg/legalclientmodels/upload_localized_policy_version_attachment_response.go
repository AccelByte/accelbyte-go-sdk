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

// UploadLocalizedPolicyVersionAttachmentResponse Upload localized policy version attachment response
//
// swagger:model Upload localized policy version attachment response.
type UploadLocalizedPolicyVersionAttachmentResponse struct {

	// attachmentchecksum
	AttachmentChecksum string `json:"attachmentChecksum,omitempty"`

	// attachmentlocation
	AttachmentLocation string `json:"attachmentLocation,omitempty"`

	// attachmentuploadurl
	AttachmentUploadURL string `json:"attachmentUploadUrl,omitempty"`
}

// Validate validates this Upload localized policy version attachment response
func (m *UploadLocalizedPolicyVersionAttachmentResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UploadLocalizedPolicyVersionAttachmentResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UploadLocalizedPolicyVersionAttachmentResponse) UnmarshalBinary(b []byte) error {
	var res UploadLocalizedPolicyVersionAttachmentResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

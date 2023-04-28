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

// UpdateLocalizedPolicyVersionRequest Update localized policy version request
//
// swagger:model Update localized policy version request.
type UpdateLocalizedPolicyVersionRequest struct {

	// attachmentchecksum
	AttachmentChecksum string `json:"attachmentChecksum,omitempty"`

	// attachmentlocation
	AttachmentLocation string `json:"attachmentLocation,omitempty"`

	// attachmentversionidentifier
	AttachmentVersionIdentifier string `json:"attachmentVersionIdentifier,omitempty"`

	// contenttype
	ContentType string `json:"contentType,omitempty"`

	// description
	Description string `json:"description,omitempty"`
}

// Validate validates this Update localized policy version request
func (m *UpdateLocalizedPolicyVersionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UpdateLocalizedPolicyVersionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UpdateLocalizedPolicyVersionRequest) UnmarshalBinary(b []byte) error {
	var res UpdateLocalizedPolicyVersionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelUnlinkUserPlatformRequest Model unlink user platform request
//
// swagger:model Model unlink user platform request.
type ModelUnlinkUserPlatformRequest struct {

	// platformnamespace
	PlatformNamespace string `json:"platformNamespace,omitempty"`
}

// Validate validates this Model unlink user platform request
func (m *ModelUnlinkUserPlatformRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelUnlinkUserPlatformRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUnlinkUserPlatformRequest) UnmarshalBinary(b []byte) error {
	var res ModelUnlinkUserPlatformRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

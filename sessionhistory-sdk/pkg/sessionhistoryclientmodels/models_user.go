// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsUser Models user
//
// swagger:model Models user.
type ModelsUser struct {

	// id
	ID string `json:"ID,omitempty"`

	// platformid
	PlatformID string `json:"PlatformID,omitempty"`

	// platformuserid
	PlatformUserID string `json:"PlatformUserID,omitempty"`

	// status
	Status string `json:"Status,omitempty"`

	// statusv2
	StatusV2 string `json:"StatusV2,omitempty"`

	// updatedat
	UpdatedAt string `json:"UpdatedAt,omitempty"`
}

// Validate validates this Models user
func (m *ModelsUser) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUser) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUser) UnmarshalBinary(b []byte) error {
	var res ModelsUser
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

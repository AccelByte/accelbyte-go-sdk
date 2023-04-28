// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UserGameProfiles User game profiles
//
// swagger:model User game profiles.
type UserGameProfiles struct {

	// gameprofiles
	GameProfiles []*GameProfilePublicInfo `json:"gameProfiles,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this User game profiles
func (m *UserGameProfiles) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserGameProfiles) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserGameProfiles) UnmarshalBinary(b []byte) error {
	var res UserGameProfiles
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

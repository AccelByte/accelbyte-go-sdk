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

// GameProfileRequest Game profile request
//
// swagger:model Game profile request.
type GameProfileRequest struct {

	// achievements
	Achievements []string `json:"achievements,omitempty"`

	// attributes
	Attributes map[string]string `json:"attributes,omitempty"`

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// inventories
	Inventories []string `json:"inventories,omitempty"`

	// label
	Label string `json:"label,omitempty"`

	// profilename
	ProfileName string `json:"profileName,omitempty"`

	// statistics
	Statistics []string `json:"statistics,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`
}

// Validate validates this Game profile request
func (m *GameProfileRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GameProfileRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GameProfileRequest) UnmarshalBinary(b []byte) error {
	var res GameProfileRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

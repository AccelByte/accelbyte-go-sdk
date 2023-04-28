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

// GameProfileHeader Game profile header
//
// swagger:model Game profile header.
type GameProfileHeader struct {

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// label
	Label string `json:"label,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// profileid
	ProfileID string `json:"profileId,omitempty"`

	// profilename
	ProfileName string `json:"profileName,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Game profile header
func (m *GameProfileHeader) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GameProfileHeader) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GameProfileHeader) UnmarshalBinary(b []byte) error {
	var res GameProfileHeader
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

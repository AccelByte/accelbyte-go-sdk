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

// GameProfilePublicInfo Game profile public info
//
// swagger:model Game profile public info.
type GameProfilePublicInfo struct {

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// profileid
	ProfileID string `json:"profileId,omitempty"`

	// profilename
	ProfileName string `json:"profileName,omitempty"`
}

// Validate validates this Game profile public info
func (m *GameProfilePublicInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GameProfilePublicInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GameProfilePublicInfo) UnmarshalBinary(b []byte) error {
	var res GameProfilePublicInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UserProfilePublicInfo User profile public info
//
// swagger:model User profile public info.
type UserProfilePublicInfo struct {

	// avatarlargeurl
	AvatarLargeURL string `json:"avatarLargeUrl,omitempty"`

	// avatarsmallurl
	AvatarSmallURL string `json:"avatarSmallUrl,omitempty"`

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// publicid
	PublicID string `json:"publicId,omitempty"`

	// timezone
	TimeZone string `json:"timeZone,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this User profile public info
func (m *UserProfilePublicInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserProfilePublicInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserProfilePublicInfo) UnmarshalBinary(b []byte) error {
	var res UserProfilePublicInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

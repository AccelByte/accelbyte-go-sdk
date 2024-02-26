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

// ModelPublicUserUpdateRequestV3 Model public user update request V3
//
// swagger:model Model public user update request V3.
type ModelPublicUserUpdateRequestV3 struct {

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// country
	Country string `json:"country,omitempty"`

	// dateofbirth
	DateOfBirth string `json:"dateOfBirth,omitempty"`

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// languagetag
	LanguageTag string `json:"languageTag,omitempty"`

	// uniquedisplayname
	UniqueDisplayName string `json:"uniqueDisplayName,omitempty"`

	// username
	UserName string `json:"userName,omitempty"`
}

// Validate validates this Model public user update request V3
func (m *ModelPublicUserUpdateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelPublicUserUpdateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPublicUserUpdateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelPublicUserUpdateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

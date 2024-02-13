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

// ModelUserUpdateRequestV3 Model user update request V3
//
// swagger:model Model user update request V3.
type ModelUserUpdateRequestV3 struct {

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

// Validate validates this Model user update request V3
func (m *ModelUserUpdateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserUpdateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserUpdateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUserUpdateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

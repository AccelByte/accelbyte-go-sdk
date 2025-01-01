// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelAccountProgressionInfo Model account progression info
//
// swagger:model Model account progression info.
type ModelAccountProgressionInfo struct {

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// email
	Email string `json:"email,omitempty"`

	// For headlessAccount: list of all namespaces from this headless account. For currentAccount: list of all namespaces that conflict with headlessAccount
	// Required: true
	LinkedGames []string `json:"linkedGames"`

	// platformid
	PlatformID string `json:"platformId,omitempty"`

	// progression data of each game account
	Progressions []*ModelProgressionInfo `json:"progressions,omitempty"`

	// uniquedisplayname
	UniqueDisplayName string `json:"uniqueDisplayName,omitempty"`

	// username
	UserName string `json:"userName,omitempty"`
}

// Validate validates this Model account progression info
func (m *ModelAccountProgressionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLinkedGames(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelAccountProgressionInfo) validateLinkedGames(formats strfmt.Registry) error {

	if err := validate.Required("linkedGames", "body", m.LinkedGames); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAccountProgressionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAccountProgressionInfo) UnmarshalBinary(b []byte) error {
	var res ModelAccountProgressionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

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

// ModelGetLinkHeadlessAccountConflictResponse Model get link headless account conflict response
//
// swagger:model Model get link headless account conflict response.
type ModelGetLinkHeadlessAccountConflictResponse struct {

	// only exists when platformLinkConflict=false & platformAlreadyLinked=false
	CurrentAccount *ModelAccountProgressionInfo `json:"currentAccount,omitempty"`

	// only exists when platformLinkConflict=false & platformAlreadyLinked=false
	HeadlessAccount *ModelAccountProgressionInfo `json:"headlessAccount,omitempty"`

	// if full account already linked to this platform
	// Required: true
	PlatformAlreadyLinked *bool `json:"platformAlreadyLinked"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// if linked to this platform's other account
	// Required: true
	PlatformLinkConflict *bool `json:"platformLinkConflict"`
}

// Validate validates this Model get link headless account conflict response
func (m *ModelGetLinkHeadlessAccountConflictResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformAlreadyLinked(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformLinkConflict(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelGetLinkHeadlessAccountConflictResponse) validatePlatformAlreadyLinked(formats strfmt.Registry) error {

	if err := validate.Required("platformAlreadyLinked", "body", m.PlatformAlreadyLinked); err != nil {
		return err
	}

	return nil
}

func (m *ModelGetLinkHeadlessAccountConflictResponse) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelGetLinkHeadlessAccountConflictResponse) validatePlatformLinkConflict(formats strfmt.Registry) error {

	if err := validate.Required("platformLinkConflict", "body", m.PlatformLinkConflict); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGetLinkHeadlessAccountConflictResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGetLinkHeadlessAccountConflictResponse) UnmarshalBinary(b []byte) error {
	var res ModelGetLinkHeadlessAccountConflictResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

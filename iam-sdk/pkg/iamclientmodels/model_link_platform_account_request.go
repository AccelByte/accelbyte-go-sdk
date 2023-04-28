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

// ModelLinkPlatformAccountRequest Model link platform account request
//
// swagger:model Model link platform account request.
type ModelLinkPlatformAccountRequest struct {

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`
}

// Validate validates this Model link platform account request
func (m *ModelLinkPlatformAccountRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelLinkPlatformAccountRequest) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkPlatformAccountRequest) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelLinkPlatformAccountRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelLinkPlatformAccountRequest) UnmarshalBinary(b []byte) error {
	var res ModelLinkPlatformAccountRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

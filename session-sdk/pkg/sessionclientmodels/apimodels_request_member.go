// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsRequestMember Apimodels request member
//
// swagger:model Apimodels request member.
type ApimodelsRequestMember struct {

	// id
	// Required: true
	ID *string `json:"ID"`

	// platformid
	// Required: true
	PlatformID *string `json:"PlatformID"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"PlatformUserID"`
}

// Validate validates this Apimodels request member
func (m *ApimodelsRequestMember) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
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

func (m *ApimodelsRequestMember) validateID(formats strfmt.Registry) error {

	if err := validate.Required("ID", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsRequestMember) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("PlatformID", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsRequestMember) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("PlatformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsRequestMember) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsRequestMember) UnmarshalBinary(b []byte) error {
	var res ApimodelsRequestMember
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
